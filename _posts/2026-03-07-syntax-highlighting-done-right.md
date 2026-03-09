---
title: "Syntax Highlighting Done Right"
author: "Jane Smith"
date: 2026-03-07
image: /assets/images/syntax-highlighting.svg
summary: "Make code examples in your blog posts clear and beautiful with proper syntax highlighting and thoughtful styling."
tags: [tooling]
---

Code is a first-class citizen in technical blogs. If your readers can't easily scan and understand code examples, they'll leave. Here's how to make embedded code shine.

## Inline vs Block Code

Use inline code for short references like variable names, function calls, or commands:

The `useState` hook returns an array with two elements.

Use code blocks for anything longer than a single expression:

```javascript
function greet(name) {
  const message = `Hello, ${name}!`;
  console.log(message);
  return message;
}
```

## Language-Specific Examples

### Python

```python
from dataclasses import dataclass
from typing import Optional

@dataclass
class BlogPost:
    title: str
    author: str
    summary: Optional[str] = None
    published: bool = False

    def publish(self):
        self.published = True
        return f"Published: {self.title}"
```

### Ruby

```ruby
class BlogPost
  attr_accessor :title, :author, :summary

  def initialize(title:, author:, summary: nil)
    @title = title
    @author = author
    @summary = summary
    @published = false
  end

  def publish!
    @published = true
    "Published: #{@title}"
  end

  def published?
    @published
  end
end
```

### HTML & CSS

```html
<article class="post-card">
  <div class="post-card-image">
    <img src="/assets/images/banner.jpg" alt="Post banner">
  </div>
  <div class="post-card-body">
    <h2>Post Title</h2>
    <p>A brief summary of the post content.</p>
  </div>
</article>
```

```css
.post-card {
  border-radius: 10px;
  overflow: hidden;
  border: 1px solid #dfe6e9;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
  transition: transform 0.2s ease;
}

.post-card:hover {
  transform: translateY(-3px);
}
```

## Key Principles

1. **Dark backgrounds** for code blocks — reduces eye strain and creates clear visual separation from prose
2. **Generous padding** — code needs breathing room
3. **Horizontal scroll** — never wrap code lines, let users scroll
4. **Readable font size** — slightly smaller than body text, but not tiny
5. **Consistent color scheme** — use a proven palette like Catppuccin, Dracula, or One Dark

## Choosing Colors

A good syntax highlighting theme uses color purposefully:

| Element      | Purpose                           |
|-------------|-----------------------------------|
| Keywords    | Language structure (purple/mauve)  |
| Strings     | Data values (green)               |
| Comments    | Context/notes (gray, italic)      |
| Functions   | Callable units (blue)             |
| Numbers     | Numeric literals (orange/peach)   |

> The best syntax themes use no more than 6-8 distinct colors. Too many colors create visual noise instead of clarity.

## Final Thoughts

Good code styling is invisible — readers should focus on the code itself, not the presentation. Keep fonts crisp, colors purposeful, and spacing generous. Your developer readers will thank you.
