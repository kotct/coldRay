#include "eventHandler.h"

void onClose(int code) {
  SDL_Quit();
  exit(code);
}
