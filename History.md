## Why?

Always wanted to read this, but no copy is readily available in libraries in Hong Kong.

## How it was made

1. Find the [full text](https://quod.lib.umich.edu/cgi/t/text/text-idx?c=eebo;idno=A59095.0001.001) of the book via [Early English Books Online](https://quod.lib.umich.edu/e/eebogroup/)
2. Use ChatGPT to generate a draft of index.html and app.css; tweak
3. Copy and paste contents to "contents.txt"
4. Use ChatGPT to generate first drafts of "formatContents.sh" and the other bash cripts in "bashScripts"; use them to automatically generate empty files in "txtFiles"
5. Manually copy and paste into the txtFiles (and skim the book in the process!)
6. Use [pandoc](https://rychappell.substack.com/p/git-pandoc-academic-workflow?sd=pf) with "panDocs.sh" to convert them into appropriate html pages
7. Deploy and error shoot
8. Explore options to make (marginally!) mobile friendly.  Frameworks were too complex.  Settled on clamp: see "experiment.html" from [this tutorial](https://www.youtube.com/watch?v=erqRw3E-vn4)
9. Notify [Early English Books Online](https://quod.lib.umich.edu/e/eebogroup/) of this project (and receive a very warm response!)

## Known issue(s)

- The original text contained some errors, not all of which have been fixed.
- Some pages are missing a new line character and incorrectly formatted.
- Currently the "Back to contents" links links back to the live Github version, not the development version on the local machine.  Will make maintenance more difficult in the future.
- If you delete all "target=_blank" from the formatted_Title.html, the new pages only appear in the Contents iframe.  Query how best to minimise new tabs: now you get a lot of open tabs flipping through a few sections.

## Non-features

- Proper title for each of the pages
- Adding a "next page" button to let readers flip forward
- Adding a "last page" button to let readers flip back
- Further improve scrollability on i-Phones (still a bit clacky)
- Search bar
- Improve contents so that each topic gets its own link (e.g.one entry for "Convocation" and another for "Creed", not "Convocation, Creed, 46")

## What not to do next time

- Better testing workflow.  E.g. took me a while to realise the easiest way to visually check all the pages is to open them all on the local machine with a browser!
- This is a small enough project (and good enough text) for manual tweaking to be worth it.  At the moment, need to (1) edit to text file, (2) convert to html with pandoc by hand and (3) add the top and bottom lines by hand.  This should be automated for a larger project (e.g. one step build from everything in the text directory to everything in the html directory).
