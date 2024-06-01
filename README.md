# Prolog-Based Graph Traversal: BFS Implementation

## Project Overview

This project implements graph traversal algorithms using Prolog, specifically focusing on breadth-first search (BFS). It allows finding the shortest path between nodes in both directed and undirected graphs.

## Features

- **Graph Representation**: The graph is represented using Prolog predicates to define the edges between nodes.
- **Breadth-First Search (BFS)**: Implements BFS algorithm recursively to find the shortest path between two nodes in a given graph.
- **Test Cases**: Includes several test cases to validate the correctness of the BFS implementation.

## Process Steps

1. **Graph Representation**: Define the graph using predicates for the edges between different nodes.
2. **BFS Algorithm**: Implement the BFS algorithm to explore the graph level by level using a queue to manage the traversal.
3. **Testing**: Run test cases to ensure the BFS implementation correctly finds the shortest paths in various graph configurations.

## Key Functions

- **Graph Representation**: Predicates to define edges.
- **BFS Implementation**: Recursive BFS function to find shortest paths.
- **Test Cases**: Predefined test cases to validate the algorithm.

## Prerequisites

- Ensure a Prolog interpreter is installed on your system. Common Prolog interpreters include SWI-Prolog and GNU Prolog.

## Setup Instructions

1. **Download or Copy Code**:
   Download or copy the code from `main.pl`.

2. **Open Terminal/Command Prompt**:
   Open your terminal or command prompt.

3. **Navigate to Directory**:
   Use `cd` to navigate to the directory containing `main.pl`.

4. **Launch Prolog Interpreter**:
   Enter the command to launch the Prolog interpreter:
   ```sh
   swipl
5. **Load the File**:
   Once inside the Prolog interpreter, load the main.pl file using the following command:
   ```sh
    ?- [main].
7. **Run the Test**:
   After loading the file, you can run the predefined test cases by typing:
   ```sh
   ?- test.

## Explanation
Using Breadth-First Search (BFS), this Prolog implementation finds the shortest path among all paths between two nodes in a graph. The graph is defined using predicates for edges, and BFS is implemented recursively, exploring nodes level by level with a queue. The project tests BFS on both directed and undirected graphs, providing correct results across various test cases, demonstrating Prolog's effectiveness and flexibility for graph traversal problems.

## References
https://www.swi-prolog.org/
