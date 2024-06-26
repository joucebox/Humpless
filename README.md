# Humpless
## Vision
Our vision for Humpless is to create an optimized, seamless, and user-friendly command-line interface for task management. Users will be able to easily track tasks as done, in-progress, or to-do, with each task including details such as name, description, due date, category, and progress status. Users will have the flexibility to sort and filter tasks based on their characteristics, including name and due date, and perform actions such as adding, editing, and deleting tasks.
## Project Developers
- Lawrence Granda Zarzuela (lg626@cornell.edu)
- Joyce Shen (js3696@cornell.edu)
- Lukas Friedman (lsf58@cornell.edu)
## Features
- **Task Management**: Create, edit, and delete tasks.
- **Task Attributes**: Each task includes a name, description, due date, category, and progress status.
- **Sorting and Filtering**: Sort and filter tasks based on different attributes like name, due date, and category.
- **Task Progress**: Mark tasks as done, in-progress, or to-do.
- **CSV Integration**: Load and save tasks from/to CSV files.
## Using Humpless
### Prerequisites
- **OPAM**: Ensure you have OPAM installed.
- **Dune**: Make sure you have Dune installed.
### Installation
1. Update OPAM:

   ```
   opam update
   opam upgrade
   ```

2. Install required packages:
   
   ```
     opam install ppx_inline_test csv ansiterminal
   ```

### Building and Running
1. Build Humpless with ```dune build```

2. Execute with
   
   ```
     dune exec bin/main.exe <csv in data>
   ```

   You should see a table printed in the terminal with the following columns:
   
   ```
     Name | Description | Date | Time | Category | Progress
   ```

### Running Tests
Ensure all tests pass with ```dune test```.

## Test Plan 
### Bisect Test Coverage
- Overall: 87.85%
- Modules:
  - **Table.ml**: 85%
  - **Task.ml**: 98%
 ### OUnit Testing (Automated)
 - Number of Tests: 67 OUnit tests are conducted, ensuring a robust testing suite.
 - Approach: Utilizes both black box and glass box testing methodologies.
    - **Table.ml**: Tests creation, loaders, exception handling, sorting, setters, and filtering functionalities.
    - **Task.ml**: Tests setters, getters, creator, input validity, edge cases (e.g., invalid times or dates), and exception handling.
### Integration Testing
- ```Integration_test.ml```: Located in the tests folder, automatically runs with dune test, performing integration testing on the Table module.
  - **Operations**: Executes multiple chained table operations to test the module's functionality.
  - **Validation**: The OUnit test passes if no exceptions are raised, providing a basic level of validation.
  - **Output Inspection**: Prints outputs, facilitating manual inspection to verify correctness.

### Demonstration of Correctness
- **Comprehensive Testing**: The test suite thoroughly covers the Table and Task modules, ensuring expected behavior.
- **Scenarios and Edge Cases**: Tests various scenarios and edge cases, including invalid inputs and exceptions.
- **Robustness**: Demonstrates the modules' correctness and robustness in managing tasks in a table format.
- **Combined Approach**: The combination of automated OUnit tests and manual integration testing provides a holistic validation, ensuring the modules function accurately and effectively.
