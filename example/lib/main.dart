import 'package:ibm_watson_assistant/ibm_watson_assistant.dart';
import 'package:dotenv/dotenv.dart';

void main() async {
  load();

  final auth = IbmWatsonAssistantAuth(
    assistantId: env['ASSISTANT_ID'],
    url: env['ASSISTANT_URL'],
    apikey: env['API_KEY'],
  );

  final bot = IbmWatsonAssistant(auth);

  final sessionId = await bot.createSession();
  print(sessionId);

  final botRes = await bot.sendInput('hello', sessionId: sessionId);
  print(botRes.output.generic.first.text);
  print(botRes.responseText);

  final statelessBotRes = await bot.sendInput('goodbye', returnContext: false);
  print(statelessBotRes.output.generic.first.text);
  print(statelessBotRes.responseText);
  print(statelessBotRes.context.skills.mainSkill.systemState.state);

  bot.deleteSession(sessionId);

  try {
    final logs = await bot.logs();
    print(logs);
  } catch (e) {
    print('Logging endpoint only available for paid plans.\n$e');
  }
}
