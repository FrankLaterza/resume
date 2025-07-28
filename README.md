# Resume

[**View PDF**](FrankLaterzaFall2025.pdf)

This repository contains the LaTeX source for my resume.

## Building the PDF

The easiest way to build the PDF is to use the provided scripts.

### Using the Build Scripts

1.  **Install a LaTeX distribution:** You need a LaTeX distribution installed on your system, such as [MiKTeX](https://miktex.org/) (for Windows), [MacTeX](https://www.tug.org/mactex/) (for macOS), or [TeX Live](https://www.tug.org/texlive/) (for Linux).
2.  **Run the script for your OS:**
    *   **macOS/Linux:**
        ```bash
        ./build.sh
        ```
    *   **Windows:**
        ```bat
        .\build.bat
        ```

### Other Build Methods

#### Using VS Code with LaTeX Workshop Extension

1.  **Install the extension:** Make sure you have the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension by James-Yu installed in VS Code.
2.  **Open the project:** Open this repository folder in VS Code.
3.  **Build:** Open the `FrankLaterzaFall2025.tex` file. The extension should automatically build the PDF when you save the file. You can also trigger a build manually by opening the Command Palette (`Cmd+Shift+P` on macOS, `Ctrl+Shift+P` on Windows/Linux) and running the `LaTeX Workshop: Build LaTeX project` command.

#### Using the Command Line Manually

1.  **Navigate to the directory:** Open your terminal and navigate to the root of this repository.
2.  **Run pdflatex:** Execute the following command:
    ```bash
    pdflatex FrankLaterzaFall2025.tex
    ```
    You may need to run the command twice to ensure all cross-references and citations are correctly generated.