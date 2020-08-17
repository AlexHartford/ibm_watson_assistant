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
  print(botRes);

  final statelessBotRes = await bot.sendInput('goodbye', returnContext: false);
  print(statelessBotRes);

  bot.deleteSession(sessionId);

  // Logging endpoint only available for paid plans
  final logs = await bot.logs();
  print(logs);
}
