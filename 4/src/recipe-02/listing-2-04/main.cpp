#include <iostream>

int main()
{
    int number{ 0 };
    char another{ static_cast<char>(512) };
    double bigNumber{ 1.0 };
    float littleNumber{ static_cast<float>(bigNumber) };
    
    std::cout << "number: " << number << std::endl;
    std::cout << "another: " << static_cast<int>(another) << std::endl;
    std::cout << "littleNumber: " << littleNumber << std::endl;

    return 0;
}
