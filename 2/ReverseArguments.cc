#include <iostream>

int main(int argc, char* argv[]) {

	if (argc == 1) {
		std::cout << "Error: Missing arguments" << std::endl;
	} else {
		for (int i = argc - 1; i > 0; i--) {
			std::cout << argv[i] << std::endl;
		}
	}

	return 0;
}
