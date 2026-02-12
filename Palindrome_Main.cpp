int main() {
    string line;
    char choice;

    do {
        cout << "\nWould you like to give it a try? Type a word or phrase and press Enter: (e.g., racecar, madam, 12321)\n";
        getline(cin, line);

        // Process input for palindrome check
        string processedItem;
        for (char ch : line) {
            // Check if the character is alphanumeric (letter or number)
            if ((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') || (ch >= '0' && ch <= '9')) {
                // Convert uppercase letters to lowercase manually
                if (ch >= 'A' && ch <= 'Z') {
                    ch += 32;  // Convert to lowercase
                }
                processedItem += ch;
            }
        }

        // Push characters onto stack
        string reverseItem;
        for (int i = processedItem.size() - 1; i >= 0; i--) {
            reverseItem += processedItem[i];
        }

        // Output result
        if (processedItem == reverseItem) {
            cout << "\"" << line << "\" is a palindrome." << endl;
            cout << "That's great! Would you like to try again? (y/n): ";
        } else {
            cout << "\"" << line << "\" is not a palindrome." << endl;
            cout << "That's okay, would you like to try again? (y/n): ";
        }

        // Input validation loop
        while (true) {
            cin >> choice;
            cin.ignore();  // Clears newline character

            if (choice == 'y' || choice == 'Y' || choice == 'n' || choice == 'N') {
                break;  // Valid input, exit loop
            }

            cout << "Invalid input. Please enter 'y' to try again or 'n' to exit: ";
        }

    } while (choice == 'y' || choice == 'Y');

    cout << "Thanks for playing! Goodbye.\n";
    return 0;
}