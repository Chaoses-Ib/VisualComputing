# Object Detection
[Wikipedia](https://en.wikipedia.org/wiki/Object_detection)

**Object detection** is a computer technology related to computer vision and image processing that deals with detecting instances of semantic objects of a certain class (such as humans, buildings, or cars) in digital images and videos.

## Metrics
- Intersection over union (IoU)

  ![](https://blog.roboflow.com/content/images/size/w1000/2022/11/iou-2.png)

  COCO's AP is obtained by averaging over multiple IoU values instead of just one, except for a common AP metric called $AP_{50}$, which is the AP for a single IoU threshold of $0.5$. Specifically, it uses IoU thresholds from $0.5$ to $0.95$ with a step size of $0.05$.[^terven]

- Average precision (AP)
  
  Difference confidence thresholds will result in different precisions. Average precision is the avearge of precisions over different confidence thresholds.

  ![](https://blog.roboflow.com/content/images/size/w1000/2022/02/mean-average-precision-recall.png)

  COCO uses a 101-point interpolation, i.e., it computes the precision for 101 recall thresholds from 0 to 1 in increments of 0.01.[^terven]

- Area under the curve (AUC)

[Mean Average Precision (mAP) in Object Detection](https://blog.roboflow.com/mean-average-precision/)


[^terven]: Terven, Juan, and Diana Cordova-Esparza. “A Comprehensive Review of YOLO: From YOLOv1 and Beyond.” arXiv, May 19, 2023. https://doi.org/10.48550/arXiv.2304.00501.