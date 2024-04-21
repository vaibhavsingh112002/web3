// SPDX-License-Identifier: GPL-3.0
pragma solidity <0.9.0;

contract Types{
    enum week_days{
        Monday,
        Tuesday,
        Wednesday,
        Thrusday,
        Friday,
        Saturday,
        Sunday
    }
    week_days week;
    week_days choice;
    week_days constant default_value = week_days.Sunday;
    function set_value() public {
        choice = week_days.Thrusday;
    }
    function get_choice() public view returns(week_days){
        return choice;
    }
    function getdefaultvalu() public pure returns(week_days) {
        return default_value;
    }
}


// SPDX-License-Identifier: GPL-3.0
pragma solidity <0.9.0;

contract test{
    struct Book{
        string name;
        string writer;
        uint id;
        bool available;
    }
    Book book1;
    Book book2 = Book("Building Etherium DApps", "Roberto Infante", 2, false);
    function set_book_detail() public{
        book1 = Book("Introducing Etherium & Solidity", "Chris Damen", 1, true);
    }
    function book_info() public view returns(string memory, string memory, uint, bool){
        return(book2.name, book2.writer, book2.id, book2.available);
    }
    function get_details() public view returns(string memory, uint) {
        return (book1.name, book1.id);
    }
}
