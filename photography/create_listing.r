collections <- list.dirs()

display <- c()
ordering <- c()
for (collection in dir(pattern='metadata.json', recursive=TRUE)) {
  directory <- dirname(collection)
  metadata <- jsonlite::read_json(collection)

  text <- paste0('<h2>', metadata$collection, '</h2>\n', '<p>', metadata$description, '</p>\n')
  text <- paste0(text, '<div id="gallery-', directory, '">')

  for (image in metadata$images) {
    text <- paste0(text, '<a href="', directory, '/', image$filename, '"><img src="thumbs/', image$filename, '" group="', directory, '"></a>')
  }

  text <- paste0(text, '</div>')

  display <- append(display, text)
  ordering <- append(ordering, metadata$order)
}

cat(paste(display[order(ordering)], collapse='\n\n'))
