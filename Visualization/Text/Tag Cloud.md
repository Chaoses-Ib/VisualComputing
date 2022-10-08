# Tag Cloud
A **tag cloud (word cloud, wordle or weighted list)** is a visual representation of text data, which is often used to depict keyword metadata on websites, or to visualize free form text.[^wiki]

## Libraries
Python:
- [word_cloud](https://amueller.github.io/word_cloud/) ([GitHub](https://github.com/amueller/word_cloud))

  Example:
  ```python
  from wordcloud import WordCloud
  import matplotlib.pyplot as plt

  plt.imshow(WordCloud(font_path='msyh.ttc').generate_from_frequencies({'Lucy': 10, '露西': 1}))
  ```

[^wiki]: [Tag cloud - Wikipedia](https://en.wikipedia.org/wiki/Tag_cloud)