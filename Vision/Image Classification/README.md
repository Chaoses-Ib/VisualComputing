# Image Classification
[cats_vs_dogs · Datasets at Hugging Face](https://huggingface.co/datasets/cats_vs_dogs)
- [kagglecatsanddogs_3367a.zip](https://web.archive.org/web/20200803203411/https://download.microsoft.com/download/3/E/1/3E1C3F21-ECDB-4869-8368-6DEBA77B919F/kagglecatsanddogs_3367a.zip)

## Datasets
- [ImageNet](https://image-net.org/index.php) ([Wikipedia](https://en.wikipedia.org/wiki/ImageNet), [Paper With Code](https://paperswithcode.com/dataset/imagenet))

  - ImageNet-22K (full ImageNet)
  
    14,197,122 images in 21,841 classes. The average resolution is 468x386.

  - ImageNet-1K: [ImageNet Large Scale Visual Recognition Challenge (ILSVRC)](https://image-net.org/challenges/LSVRC/index.php) ([Hugging Face](https://huggingface.co/datasets/imagenet-1k), [Kaggle](https://www.kaggle.com/c/imagenet-object-localization-challenge/overview/description))

    1,281,167 images in 1,000 classes. 50,000 validation images and 100,000 test images.

  - [Tiny ImageNet](https://www.kaggle.com/c/tiny-imagenet) (ImageNet-200)

    100,000 64x64 color images in 200 classes. Each class has 500 training images, 50 validation images (10,000 in total) and 50 test images (10,000 in total).

    100k, 10k, 10k

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

- [CIFAR-10 and CIFAR-100](https://www.cs.toronto.edu/~kriz/cifar.html)
  - CIFAR-10: 60,000 32x32 color images in 10 classes
  - CIFAR-100: 60,000 32x32 color images in 100 classes, 20 superclasses

- MNIST database ([Wikipedia](https://en.wikipedia.org/wiki/MNIST_database), [Papers With Code](https://paperswithcode.com/sota/image-classification-on-mnist))

  60,000 28x28 grayscale images in 10 classes. 10,000 test images.

[\[P\] What're some good datasets for image classification projects? : r/MachineLearning](https://www.reddit.com/r/MachineLearning/comments/dkfgsb/p_whatre_some_good_datasets_for_image/)

[Why are we still working on the low resolution images like CIFAR-10? : r/MLQuestions](https://www.reddit.com/r/MLQuestions/comments/gi8p3a/why_are_we_still_working_on_the_low_resolution/)