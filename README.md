# research-diary-bibliography-thing
Cites, prior art, bibliography, notes on papers etc etc for my personal research project

Contains:
- `mk-reading.sh`: a script that creates a list of all the files you currently have open in evince
- `reading.sh`: a script to take one of those lists and open all the files up in evince
- `gather-tagged.sh`: a script to take a tag and a list of papers and lists out the papers that have a tag file with that tag in it
- `papers`: a folder with sorted, named papers in it plus additional information. `.pdf` files are the papers themselves, `.tags` files which contain a newline separated list of the paper's relevant topics, `.notes` files with my thoughts on the paper, but also for papers that are in the form of websites: `.md` files which are markdownified copies of the relevant part of the webpage, and `.link` files which contain a url for the original webpage, and occasionally an `.htm` and a folder ending in `_files` for self contained html.
- `history`: a folder with transcripts of oral histories, ...
- `lists`: a folder with lists of sets of related papers/books I'm reading, with comments to note down the topics and my thoughts

## Notes to myself

Use `pdfgrep` to search through my downloaded papers folder with keywords, then rename the interesting pdfs to actually have the actual name and move it to `papers`.
