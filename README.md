# Diversity Pool

## Abstract
Several data stream applications involve recurring concepts, i.e., concept drifts that change the underlying distribution of the data to a distribution previously seen in the data stream. Examples include electricity price prediction and tweet topic classification. In such scenario, it is useful to maintain a pool of old models that could be recovered if their knowledge matches the recurring concept well. A few existing online learning approaches maintain such pools. However, there has been a little investigation on what is the best strategy to maintain an online learning pool with a limited size. We propose to make use of diversity to decide which models to keep in the pool once the pool reaches the maximum size. The motivation behind is that a diverse pool is more likely to maintain a set of representative models with considerably different concepts, helping to handle recurring concepts. We perform experiments to investigate if, when and why maintaining a diverse pool is helpful. The results show that the use of diversity to maintain pools can indeed be helpful to handle recurring concepts. However, the relationship between diversity and accuracy in the presence of concept drift is not straightforward. In particular, an initially good accuracy obtained when using diversity can lead to a stronger subsequent drop in accuracy than other strategies.

#### Author
 - Chun Wai Chiu (Michael): cwc13 at leicester dot ac dot uk
 - Leandro Minku: leandro dot minku at leicester dot ac dot uk

CHIU, C.W.; MINKU, L.L. . "Diversity-Based Pool of Models for Dealing with Recurring Concepts", IEEE International Joint Conference on Neural Networks, p. 2759-2766, July 2018.
