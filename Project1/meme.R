library(magick)

#small brain text
small_brain_text <- image_blank(width = 400, 
                               height = 400,
                               color = "#000") %>%
  image_annotate(text = "Python:\na_list[0]",
                 color = "#fff",
                 font = "Sans Serif",
                 size = 80,
                 gravity = "center"
                 ) %>%
    image_border("white", "3x3")

# small brain
small_brain <- image_read("small_brain2.jpg") %>%
  image_flop() %>% 
    image_border("white", "3x3")

first_row = image_append(c(small_brain_text, small_brain))

#mid brain text
mid_brain_text <- image_blank(width = 400, 
                                height = 400,
                                color = "#000") %>%
  image_annotate(text = "Java:\narray[0]",
                 color = "#fff",
                 font = "Sans Serif",
                 size = 80,
                 gravity = "center") %>%
    image_border("white", "3x3")

# mid brain
mid_brain <- image_read("mid_brain.jpg") %>%
  image_border("white", "3x3")

second_row = image_append(c(mid_brain_text, mid_brain))

#shine brain text
shine_brain_text <- image_blank(width = 400, 
                              height = 400,
                              color = "#000") %>%
  image_annotate(text = "C:\narray[0]",
                 color = "#fff",
                 font = "Sans Serif",
                 size = 80,
                 gravity = "center") %>%
    image_border("white", "3x3")

# shine brain
shine_brain <- image_read("shine_brain.jpg") %>%
  image_border("white", "3x3")

third_row = image_append(c(shine_brain_text, shine_brain))


#universe brain text
universe_brain_text <- image_blank(width = 400, 
                                height = 400,
                                color = "#000") %>%
  image_annotate(text = "R:\nvector[1]",
                 color = "#fff",
                 font = "Sans Serif",
                 size = 80,
                 gravity = "center") %>%
    image_border("white", "3x3")

# universe brain
universe_brain <- image_read("universe_brain.jpg") %>%
  image_border("white", "3x3")

forth_row = image_append(c(universe_brain_text, universe_brain))


images = c(first_row, second_row, third_row, forth_row)
my_meme = image_append(images, stack = TRUE)

image_write(my_meme, "my_meme.png")


#gif

my_gif <- image_morph(images) %>%
  image_modulate(brightness = 80, saturation = 120, hue = 90) %>%
    image_animate(fps = 10)
my_gif

image_write(my_gif, "my_gif.gif")


