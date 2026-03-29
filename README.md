# LLM Chat Lab Template 🧪

A focused, minimalist VS Code environment for drafting, managing, and archiving interactions with Large Language Models (Gemini, Claude, GPT, etc.).

## 🚀 Features
* **Distraction-Free Writing:** Custom VS Code settings for a clean prose environment.
* **Smart Snippets:** Use `llmchat` to instantly generate a metadata-rich chat log.
* **Prose-to-PDF:** A built-in `Makefile` and Pandoc template to turn your logs into clean, professional PDFs.

## 🛠️ Setup

This template is designed for a **Windows + WSL2 (Debian/Ubuntu)** environment.

1. **Prerequisites:**
   - [VS Code](https://code.visualstudio.com/) (in Windows, using [Chocolatey](https://chocolatey.org/))

   ```powershell
   choco install vscode
   ```
   - [Pandoc](https://pandoc.org/) (in WSL)

   ```bash
   sudo apt update
   sudo apt install pandoc
   ```

   - [XeLaTeX](https://www.latex-project.org/get/) (in WSL)

   ```bash
   sudo apt update
   sudo apt install texlive-xetex texlive-fonts-recommended texlive-plain-generic
   ```

2. **Usage:**
   - Create a new `.md` file (e.g., `query.md`).
   - Type `llmchat` and press `Ctrl + <space>` to fill the template.
   - Run `make pdf` in the terminal to generate a document.

## 📂 Structure
* `.vscode/`: Snippets and editor UI settings.
* `Makefile`: Automation for PDF/TeX conversion.
* `template.tex`: Clean typography for your exported logs.