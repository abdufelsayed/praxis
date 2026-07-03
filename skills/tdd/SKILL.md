---
name: tdd
description: Use when implementing behavior changes, new features, bug fixes, regression tests, or integration tests. Guides red-green-refactor with tests through the public behavior seam.
---

# TDD

Use tests to specify behavior.

## Loop

1. Identify the public seam that proves the behavior.
2. Write one failing test for one behavior.
3. Run it and confirm the expected failure.
4. Write the smallest implementation that passes.
5. Run the test and relevant nearby tests.
6. Refactor only while green.
7. Repeat for the next behavior.

Prefer behavior tests over implementation shape. Avoid mocking internals just to make tests easy.
