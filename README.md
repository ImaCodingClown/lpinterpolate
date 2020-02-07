# lpinterpolate

Using Lagrangian Polynomial Interpolation

# Documentation
## interpolate
```bash
interpolate(x, data)
```
interpolates ```data``` using lagrangian polynomial interpolation method given by

![f1]

where

![f2]

```data``` must be type ```Array``` or ```String```. In case of ```String```, the function will read the file named ```String``` and read it as array of numbers. The function will take first two columns of the array as x and y values.

[f1]: http://chart.apis.google.com/chart?cht=tx&chl=P(x)=\sum^n_{j=1}P_j(x)

[f2]: http://chart.apis.google.com/chart?cht=tx&chl=P_j(x)=\prod^n_{k=1,k\neq{j}}\frac{x-x_k}{x_j-x_k}
