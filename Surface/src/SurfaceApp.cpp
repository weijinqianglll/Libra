#include <Engine.h>

class Surface : public Engine::Application
{
public:
	Surface(){}
	~Surface(){}

private:

};



void main() {
	Surface* surface = new Surface();
	surface->Run();
	delete surface;
}