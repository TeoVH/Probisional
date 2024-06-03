class MyClass
{
    private:
        int m_Member;
    public:
        MyClass() = default;
        MyClass(const MyClass& rhs) = default;
};
int main()
{
    MyClass objectA{MyClass{}};
    MyClass objectB{MyClass{}};
    return 0;
}
