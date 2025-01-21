# Simple Reverse Shell written in PowerShell

This is a simple reverse shell written in PowerShell. It is a one-liner that will encode a Reverse shell in base64 and execute it on the target machine.

## Usage

1. Download `reverse_shell.ps1` from the repository.
2. Edit the `reverse_shell.ps1` file and replace the `IP` and `PORT` with your IP and Port of your listener.
3. Start a listener on your machine using `sudo rlwrap nc -lvnp PORT`.
4. Host the `reverse_shell.ps1` file on a server (e.g. `python3 -m http.server 8080`).
5. Edit the URL on `reverse_shell.txt` and replace it with the URL of your `reverse_shell.ps1` file.
