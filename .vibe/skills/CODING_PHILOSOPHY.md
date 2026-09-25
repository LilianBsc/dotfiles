# Coding Philosophy

KISS (Keep It Stupid Simple) philosophy.

Coding is like solo sailing: you need simple, maintainable, and reliable components on your boat.
Combining simplicity, readability and effectiveness is the one true form of elegance.

## Core Principles

### 1. **Do One Thing Well**
- One function, one purpose
- One module, one responsibility
- One component, one job
- Keep it simple, keep it focused

### 2. **Fail Fast, Fail Loud**
- Validate inputs immediately
- Use specific exceptions
- Never swallow errors silently
- Log context, not just messages

### 3. **Explicit > Implicit**
- Clear variable names
- Type hints everywhere
- Document assumptions
- Make control flow obvious

### 4. **Composition > Inheritance**
- Build small, reusable components
- Combine components, don't extend
- Depend on abstractions, not implementations
- Use dependency injection

### 7. **Minimize Surface Area**
- Expose only what's needed
- Hide implementation details
- Use private methods by default
- Keep interfaces small

### 8. **Defensive Programming**
- Assume inputs are malicious
- Validate everything
- Handle edge cases
- Assume dependencies will fail

## Elegance Principles

### 1. **Readability > Cleverness**
- Clear code > clever code
- Obvious code > optimized code
- Simple code > complex code
- Maintainable code > brilliant code

### 2. **Consistency > Innovation**
- Follow established patterns
- Use standard conventions
- Be predictable
- Avoid surprises

### 3. **Less Code > More Code**
- Remove unused code
- Eliminate duplication
- Extract common logic
- Keep it minimal

### 4. **Self-Documenting Code**
- Use descriptive names
- Add type hints
- Write docstrings
- Keep functions short

## Common Sense Rules

### 1. **If It's Hard to Explain, It's Bad**
- If you can't explain it simply, refactor
- If it needs long comments, simplify
- If it's confusing, it's wrong
- If it feels hacky, find a better way

### 2. **If It's Not Tested, It's Broken**
- Untested code doesn't work
- Test coverage is mandatory
- Test edge cases
- Test failure modes

### 3. **If It's Not Documented, It Doesn't Exist**
- Undocumented code is dead code
- Document public APIs
- Document assumptions
- Document examples

### 4. **If It's Not Maintainable, It's Useless**
- Code must be readable
- Code must be testable
- Code must be deployable
- Code must be debuggable
