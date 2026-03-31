
# Open Source Audit - Manthan Awgan

**Student Name:** Manthan Awgan
**Roll Number:** 24BSA10053
**Chosen Software:** LibreOffice

## Description of Scripts

*   **Script 1: System Identity Report:** Introduces the Arch Linux system, displaying the distribution name, kernel version, current user, uptime, and the open-source licenses covering the OS and LibreOffice.
*   **Script 2: Package Inspector:** Uses `pacman` to check if LibreOffice is installed on the system and retrieves its version, architecture, and package details.
*   **Script 3: Security Audit:** Loops through critical LibreOffice directories (`/usr/lib/libreoffice`, `/usr/share/libreoffice`, `/etc/libreoffice`) to verify if any are dangerously set to world-writable.
*   **Script 4: Log Analyzer:** Takes a log file as an argument and counts the occurrences of a specified keyword (defaults to "error"), outputting the total matches and the last 5 matching lines.
*   **Script 5: Manifesto Generator:** Interactively prompts the user with three questions and generates a personalized open-source manifesto text file based on their answers.

## Dependencies Required
*   **Operating System:** Arch Linux (or an Arch-based distribution), as the scripts rely on `pacman` and Arch-specific system files.
*   **Software:** `libreoffice-fresh` (or equivalent) must be installed for the package inspector to return a positive result.

## Step-by-Step Instructions to Run the Scripts

1.  Open your Linux terminal and navigate to the directory containing these scripts.
2.  Make all scripts executable by running:
    `chmod +x *.sh`
3.  **Run Script 1:** `./script1.sh`
4.  **Run Script 2:** `./script2.sh`
5.  **Run Script 3:** `./script3.sh`
6.  **Run Script 4:** `./script4.sh /path/to/logfile [optional_keyword]`
    *(Example: `./script4.sh /var/log/pacman.log error`)*
7.  **Run Script 5:** `./script5.sh` (Answer the prompts on screen)