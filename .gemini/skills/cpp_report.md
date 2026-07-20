---
name: cpp-report
description: Guidelines for maintaining and generating the SIvision C++ training report in LaTeX and printable A4 HTML formats, including code analysis and memory diagrams.
---

# SIvision C++ Report Generation Skill

This skill governs how C++ code explanations and internship session notes are structured, explained, and maintained within the `CPP_explanation` folder.

---

## 1. Document Maintenance & Workflow

Every time the user asks for a code explanation or a new topic is added, follow this two-step workflow:
1. **Explain in Chat First**: Provide a clear, detailed, and direct explanation of the snippet/concept in the chat context.
2. **Update HTML Report Only**: Once explained, append/integrate the content **ONLY** into the printable HTML report: `CPP_explanation/explanation.html`.
3. **Do NOT Update LaTeX**: The LaTeX document `CPP_explanation/explanation.tex` should **NOT** be updated for subsequent topics.

---

## 2. Professional Report Design Standards

To maintain a premium, printable, paper-like report aesthetic:

### 2.1 Cover Page & Margins
- The cover page must contain the title **"C++ Programming Course"**, the subtitle **"ESW Internship Explanation Notes"**, and the header **"SIvision Academy"**.
- The cover page must occupy exactly one page and be followed by an explicit page break.
- Page margins must mimic standard academic/corporate reports (approx. 20-25mm).

### 2.2 Print Styling (HTML)
- Keep the screen preview resembling A4 pages (width `210mm`, min-height `297mm`, white page backgrounds with subtle margins and shadows).
- Use **Georgia** or similar high-quality serif font for the body paragraphs to give an elegant, published report feel.
- Force background graphics to print in Chrome/Edge using `print-color-adjust: exact` and `-webkit-print-color-adjust: exact`.
- Use CSS page break rules to prevent list items, code snippets, and explanation boxes from splitting across pages (`page-break-inside: avoid;`).

### 2.3 LaTeX Styling
- Use the `tcolorbox` package for highlighting key explanations and warnings.
- Keep custom headers and footers matching the HTML version.
- Use `listings` with proper C++ syntax highlighting and light background colors.

---

## 3. C++ Explanation Methodology

When explaining any code snippet, always answer the following core developer questions:

### 3.1 What is the effect of the code?
- Detail the memory footprint, pointer dereferences, size mismatches, and execution behavior.
- Address issues such as **Undefined Behavior (UB)**, stack corruption, compiler optimization risks (Strict Aliasing), and hardware limitations (Unaligned memory access faults on RISC/ARM architectures).

### 3.2 Why is this specific syntax used?
- Explain the syntax components (e.g., address-of operator `&`, dereference operator `*`, explicit typecasts).
- Contrast C-style casting vs. modern C++ typecasts (`static_cast`, `reinterpret_cast`, `const_cast`). Explain the safety implications of each.

---

## 4. Visual Aids & Memory Diagrams

For complex pointer alignments, structure padding, or pointer casting, include a memory layout diagram.
- **In HTML**: Use inline CSS-styled tables or block diagrams representing memory addresses, offsets, and bytes. Keep colors print-friendly.
- **In LaTeX**: Use tabular environments or ASCII box grids to depict memory bytes (e.g. `[ Byte 0 | Byte 1 | ... ]`).

### Example Memory Layout Diagram Representation:
```text
Variable varX (uint8_t) at 0x1000:
[ 10 ] (1 Byte)

Pointer ptr (uint32_t*) points to 0x1000. Dereferencing read/writes 4 bytes:
[ 10 ] [ Adj. Byte 1 ] [ Adj. Byte 2 ] [ Adj. Byte 3 ]
^--- varX ---^----------------- Out-of-bounds -----------------^
```
