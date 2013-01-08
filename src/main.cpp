#include "eventHandler.hpp"
#include "include.hpp"
#include "p.hpp"


int main(int argc, char *argv[]) {
  Uint32 secAlive;
  fprintf(stderr, "ColdRay, version \"%s\"\n", indevString);
 
  if(SDL_Init(SDL_INIT_EVERYTHING) < 0) {
    fprintf(stderr, "[SDL_INIT] EVERYTHING failed (D:): %s\n", SDL_GetError());
    onClose(1);
  }

  return 0;
}
