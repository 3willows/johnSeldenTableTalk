## Why?

Always wanted to read this, but no copy is readily available in libraries in Hong Kong.

## How it was made

1. Find the full text of the book via [Early English Books Online](https://quod.lib.umich.edu/e/eebogroup/)
2. Use ChatGPT to generate a draft of index.html and app.css; tweak
3. Copy and paste contents to "contents.txt"
4. Use ChatGPT to generate first drafts of "formatContents.sh" and the other bash cripts in "bashScripts"; use them to automatically generate empty files in "txtFiles"
5. Manually copy and paste into the txtFiles (and skim the book in the process!)
6. Use pandocs with "panDocs.sh" to convert them into appropriate html pages
7. Deploy an error shoot

## To do

- [ ] Make mobile friendly
- [ ] Add proper CSS with Bulma/Tailwind
