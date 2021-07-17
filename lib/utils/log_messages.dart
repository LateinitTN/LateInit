import 'dart:developer';

bool showLog = true;
void logMessage(message, {isLog = false}){
  if (showLog)
    {
      if (isLog)
        log(message);
      else
        print(message);
    }
}