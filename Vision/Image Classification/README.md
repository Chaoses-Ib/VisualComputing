# Image Classification
[cats_vs_dogs · Datasets at Hugging Face](https://huggingface.co/datasets/cats_vs_dogs)
- [kagglecatsanddogs_3367a.zip](https://web.archive.org/web/20200803203411/https://download.microsoft.com/download/3/E/1/3E1C3F21-ECDB-4869-8368-6DEBA77B919F/kagglecatsanddogs_3367a.zip)

## Datasets
- [ImageNet](https://image-net.org/index.php) ([Wikipedia](https://en.wikipedia.org/wiki/ImageNet), [Paper With Code](https://paperswithcode.com/dataset/imagenet))

  - ImageNet-22K (full ImageNet)
    - Images: 14,197,122, 468x386 in average
    - Classes: 21,841

  - ImageNet-1K: [ImageNet Large Scale Visual Recognition Challenge (ILSVRC)](https://image-net.org/challenges/LSVRC/index.php) ([Hugging Face](https://huggingface.co/datasets/imagenet-1k), [Kaggle](https://www.kaggle.com/c/imagenet-object-localization-challenge/overview/description))
    - Images: 1,281,167
    - Classes: 1,000
    - Validation: 50,000
    - Test: 100,000

  - [Tiny ImageNet](https://cs231n.stanford.edu/reports/2017/pdfs/930.pdf) (ImageNet-200)
    - Images: 120,000, 64x64, color
    - Classes: 200
    - Training: 200 * 500 = 100,000
    - Validation: 200 * 50 = 10,000
    - Test: 200 * 50 = 10,000

    [jcjohnson/tiny-imagenet](https://github.com/jcjohnson/tiny-imagenet)
    - [\[D\] Tiny-Imagenet original size images : r/MachineLearning](https://www.reddit.com/r/MachineLearning/comments/lw2iof/d_tinyimagenet_original_size_images/)

    Hugging Face:
    - [zh-plus/tiny-imagenet](https://huggingface.co/datasets/zh-plus/tiny-imagenet)
      - 100k, 10k
      - 64×64
      - `label` is not the name but just a number. The name is in `classes.py`.
        ```python
        import requests

        # i2d = { "n00001740": "entity", ... }
        exec(requests.get('https://huggingface.co/datasets/zh-plus/tiny-imagenet/raw/main/classes.py').text)

        names = [i2d[n] for n in tiny_imagenet.features['label'].names]
        # Doesn't work.
        # tiny_imagenet.features['label'].names = names
        ```

    - [israfelsr/mm\_tiny\_imagenet](https://huggingface.co/datasets/israfelsr/mm_tiny_imagenet)
      - 80k, 20k

    Kaggle:
    - [c/tiny-imagenet](https://www.kaggle.com/c/tiny-imagenet)

- Caltech
  - [Caltech 101](https://data.caltech.edu/records/mzrjq-6wc02) ([Wikipedia](https://en.wikipedia.org/wiki/Caltech_101))
    - Images: 9,146, 300x200 roughly
    - Classes: 101 (faces, watches, ants, pianos, etc.)
    - 101 * 50 (40~800) = 9,146

    Hugging Face:
    - [clip-benchmark/wds\_vtab-caltech101](https://huggingface.co/datasets/clip-benchmark/wds_vtab-caltech101)
      - Images: 8,838
      - Training: 2,753
      - Test: 6,085
    - ~~[HuggingFaceM4/Caltech-101](https://huggingface.co/datasets/HuggingFaceM4/Caltech-101)~~
      - [PermissionError: \[WinError 32\] The process cannot access the file because it is being used by another process](https://huggingface.co/datasets/HuggingFaceM4/Caltech-101/discussions/3)

  - [Caltech 256](https://data.caltech.edu/records/nyy15-4j048)

    [ilee0022/Caltech-256](https://huggingface.co/datasets/ilee0022/Caltech-256)

- [The Oxford-IIIT Pet Dataset](https://www.robots.ox.ac.uk/~vgg/data/pets/)
  - Images: 7,349
  - Classes: 37
  - 37 * ~200 = 7,349

  Hugging Face:
  - [clip-benchmark/wds_vtab-pets](https://huggingface.co/datasets/clip-benchmark/wds_vtab-pets)

- [Stanford Cars Dataset](https://ai.stanford.edu/~jkrause/cars/car_dataset.html)
  - Images: 16,185
  - Classes: 196

  Kaggle:
  - [jessicali9530/stanford-cars-dataset](https://www.kaggle.com/datasets/jessicali9530/stanford-cars-dataset)

- [102 Category Flower Dataset](https://www.robots.ox.ac.uk/~vgg/data/flowers/102/)
  - Images: 8,189
  - Classes: 102
  - 102 * 40~258 = 8,189

  Hugging Face:
  - [dpdl-benchmark/oxford_flowers102](https://huggingface.co/datasets/dpdl-benchmark/oxford_flowers102)
  - [huggan/flowers-102-categories](https://huggingface.co/datasets/huggan/flowers-102-categories)
  - ~~[clip-benchmark/wds_vtab-flowers](https://huggingface.co/datasets/clip-benchmark/wds_vtab-flowers)~~

  TensorFlow: [oxford\_flowers102](https://www.tensorflow.org/datasets/catalog/oxford_flowers102):
  - Training: 102 * 10 = 1,020
  - Validation: 102 * 10 = 1,020
  - Test: 102 * >20 = 6,149

- [The Food-101 Data Set](https://data.vision.ee.ethz.ch/cvl/datasets_extra/food-101/)
  - Images: 101,000, < 512x512
  - Classes: 101
  - Training: 101 * 750 = 75,750
  - Test: 101 * 250 = 25,250

- [CIFAR-10 and CIFAR-100](https://www.cs.toronto.edu/~kriz/cifar.html)
  - CIFAR-10: 60,000 32x32 color images in 10 classes
  - CIFAR-100: 60,000 32x32 color images in 100 classes, 20 superclasses

- MNIST database ([Wikipedia](https://en.wikipedia.org/wiki/MNIST_database), [Papers With Code](https://paperswithcode.com/sota/image-classification-on-mnist))

  60,000 28x28 grayscale images in 10 classes. 10,000 test images.

[clip-benchmark](https://huggingface.co/clip-benchmark?sort_datasets=downloads#datasets)

[\[P\] What're some good datasets for image classification projects? : r/MachineLearning](https://www.reddit.com/r/MachineLearning/comments/dkfgsb/p_whatre_some_good_datasets_for_image/)

[Why are we still working on the low resolution images like CIFAR-10? : r/MLQuestions](https://www.reddit.com/r/MLQuestions/comments/gi8p3a/why_are_we_still_working_on_the_low_resolution/)

[Datasets: Image classification](https://huggingface.co/docs/datasets/en/image_classification)