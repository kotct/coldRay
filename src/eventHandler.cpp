#include "eventHandler.hpp"

void onClose(int code) {
  SDL_Quit();
  exit(code);
}
