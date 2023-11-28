# Model Card for Automatic Identification and Counting of Blood Cells

This model is designed for the automatic identification and counting of blood cells from smear images, using a machine learning approach.

## Model Details

### Model Description

- **Developed by:** Mahmudul Alam (https://github.com/MahmudulAlam)
- **Shared by:** Pablo Rocamora-Garcia (https://github.com/pablorocg)
- **Model type:** Object Detection and Classification (YOLO)
- **License:** GNU General Public License v3.0

### Model Sources

- **Repository:** https://github.com/MahmudulAlam/Automatic-Identification-and-Counting-of-Blood-Cells
- **Paper:** [Machine learning approach of automatic identification and counting of blood cells](https://doi.org/10.1049/htl.2018.5098)
- **Demo:** (Demo link or more information needed)

## Uses

### Direct Use

This model is intended for use in medical diagnosis to evaluate overall health condition through the automatic identification and counting of red blood cells, white blood cells, and platelets from blood smear images.

### Out-of-Scope Use

The model is not intended for use outside of the scope of medical imaging and blood cell analysis. Misuse or application in other domains may result in inaccurate or irrelevant results.

## How to Get Started with the Model

To get started with the model, download the trained weights, set up the environment with TensorFlow and TF-slim, and run `detect.py`. Detailed instructions can be found in the [repository](https://github.com/MahmudulAlam/Automatic-Identification-and-Counting-of-Blood-Cells).

## Training Details

### Training Data

The model was trained using the [Complete Blood Count (CBC) Dataset](https://github.com/MahmudulAlam/Complete-Blood-Cell-Count-Dataset), which contains images of blood smears for red blood cells, white blood cells, and platelets.

### Results

### Performance on Blood Cell Detection

The performance of different CNN architectures with the YOLO algorithm for detecting different types of blood cells is summarized in the following table:

| Model       | RBC Accuracy (%) | WBC Accuracy (%) | Platelet Accuracy (%) | mAP   | Execution Time (ms) |
|-------------|------------------|------------------|-----------------------|-------|---------------------|
| Tiny YOLO   | 96.09            | 86.89            | 96.36                 | 0.623 | 660                 |
| VGG-16      | 72.98            | 100.00           | 90.91                 | 0.713 | 3106                |
| ResNet50    | 79.80            | 95.08            | 87.27                 | 0.743 | 3711                |
| InceptionV3 | 87.75            | 100.00           | 96.36                 | 0.682 | 2630                |
| MobileNet   | 74.24            | 93.44            | 83.64                 | 0.520 | 784                 |

### Accuracy of Counting Blood Cells

The accuracy of counting Red Blood Cells (RBCs), White Blood Cells (WBCs), and platelets using the proposed method is detailed in the table below:

| Cell Type   | Ground Truths | Estimated Count | Accuracy (%) |
|-------------|---------------|-----------------|--------------|
| RBCs        | 792           | 823             | 96.09        |
| WBCs        | 65            | 53              | 86.89        |
| Platelets   | 155           | 353             | 96.36        |

## Citation

**BibTeX:**

```bibtex
@article{https://doi.org/10.1049/htl.2018.5098,
  title={Machine learning approach of automatic identification and counting of blood cells},
  author={Alam, Mohammad Mahmudul and Islam, Mohammad Tariqul},
  journal={Healthcare Technology Letters},
  volume={6},
  number={4},
  pages={103-108},
  year={2019},
  doi={https://doi.org/10.1049/htl.2018.5098},
  url={https://ietresearch.onlinelibrary.wiley.com/doi/abs/10.1049/htl.2018.5098}
}
```

## Model Card Authors
- [Pablo Rocamora-Garcia](https://github.com/pablorocg)
