# 🎒 Backpack Game — Exploring Python Sequence Datatypes

### 📘 Overview
This mini-project is a fun, story-based demonstration of **Python sequence datatypes** — mainly **lists** and **sets** — and their common methods.  
As you play through the "Backpack Game," you experience how lists can grow, shrink, reorder, and interact with other sequences, all through a fantasy-style adventure.

---

### 🧩 What You’ll Learn
This project walks you through real-world use of **list methods** and sequence operations such as:

| Category | Methods / Concepts | Description |
|-----------|--------------------|--------------|
| **Add Items** | `append()`, `extend()` / `+=`, `insert()` | Add new elements to your backpack |
| **Remove / Modify** | `remove()`, `pop()`, `index()` | Sell, lose, or replace items |
| **Count / Check** | `len()`, `set()`, `count()` | Inspect inventory and unique items |
| **Reorder / Sort** | `reverse()`, `sort()` | Flip and organize your backpack |
| **Slicing / Replacement** | `pack = pack[half:]` | Keep part of a list (simulate teleportation) |
| **Set Concept** | `unique_items = set(pack)` | Identify unique elements in your list |

---

### 🕹️ Gameplay Flow
Each section of the script simulates a small story event using list operations:

| Step | Description | Python Concept |
|------|--------------|----------------|
| 0️⃣ | Start with an empty backpack | List creation |
| 1️⃣ | Pick up a starter kit | `append()` |
| 2️⃣ | Loot a treasure chest | `extend()` / list addition |
| 3️⃣ | Visit a merchant | `remove()`, `index()`, element replacement |
| 4️⃣ | Check inventory stats | `len()`, `set()`, `count()` |
| 5️⃣ | Drop the backpack | `reverse()` |
| 6️⃣ | Sort items | `sort()` |
| 7️⃣ | Items stolen while sleeping | `pop()` |
| 8️⃣ | Find new items | `insert()`, `append()` |
| 9️⃣ | Half the items teleport | slicing and reassignment |
| 🔟 | Bandit steals everything | variable reassignment to `None` |

---

### 🧠 Shortcuts / Learning Tips
- `append()` adds **one item** at the end.  
- `extend()` or `+=` adds **multiple items** from another list.  
- `remove(x)` deletes the **first occurrence** of `x`.  
- `pop(i)` removes and **returns** the item at index `i` (default: last).  
- `set(list)` quickly gets all **unique** elements.  
- `sort()` modifies the list in place, whereas `sorted(list)` returns a new one.  

---

### ▶️ How to Run
1. Open the folder in VS Code.  
2. Run the script in a terminal:
   ```bash
   python backpack_game.py
