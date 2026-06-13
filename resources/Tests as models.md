https://lindeloev.github.io/tests-as-linear/#1_the_simplicity_underlying_common_tests

# 9 Teaching materials and a course outline

Most advanced stats books (and some intro-books) take the “everything is GLMM” approach as well. However, the “linear model” part often stays at the conceptual level, rather than being made explicit. I wanted to make linear models the *tool* in a concise way. Luckily, more beginner-friendly materials have emerged lately:

- Russ Poldrack’s open-source book “Statistical Thinking for the 21st century” (start at [chapter 5 on modeling](http://statsthinking21.org/fitting-models-to-data.html))
- [Jeff Rouder’s course notes](https://jeffrouder.blogspot.com/2019/03/teaching-undergrad-stats-without-p-f-or.html), introducing model comparison using just 𝑅2 and BIC. It avoids all the jargon on p-values, F-values, etc. The full materials and slides [are available here](https://drive.google.com/drive/folders/1CiJK--bAuO0F-ug3B5I3FvmsCdpPGZ03).

Here are my own thoughts on what I’d do. I’ve taught parts of this with great success already, but not the whole program since I’m not assigned to teach a full course yet.

I would spend 50% of the time on linear modeling of data since this contains 70% of what students need to know (bullet 1 below). The rest of the course is fleshing out what happens when you have one group, two groups, etc.

Note that whereas the understanding of sampling and hypothesis testing is usually the first focus of mainstream stats courses, it is saved for later here to build upon students’ prior knowledge, rather than throwing a lot of conceptually novel material at them.

1. **Fundamentals of regression:**
   1. Recall from high-school: 𝑦=𝑎⋅𝑥+𝑏, and getting a really good intuition about slopes and intercepts. Understanding that this can be written using all variable names, e.g., `money = profit * time + starting_money` or 𝑦=𝛽1𝑥+𝛽2∗1 or, suppressing the coefficients, as `y ~ x + 1`. If the audience is receptive, convey the idea of these models [as a solution to differential equations](https://magesblog.com/post/modelling-change), specifying how 𝑦 *changes* with 𝑥.
   2. Extend to a few multiple regression as models. Make sure to include plenty of real-life examples and exercises at this point to make all of this really intuitive. Marvel at how briefly these models allow us to represent large datasets.
   3. Introduce the idea of rank-transforming non-metric data and try it out.
   4. Teach the three assumptions: independence of data points, normality of residuals, and homoscedasticity.
   5. Confidence/credible intervals on the parameters. Stress that the Maximum-Likelihood estimate is extremely unlikely, so intervals are more important.
   6. Briefly introduce 𝑅2 for the simple regression models above. Mention in passing that this is called [the Pearson and Spearman correlation coefficients](https://lindeloev.github.io/tests-as-linear/#correlation).
2. **Special case #1: One or two means (t-tests, Wilcoxon, Mann-Whitney):**
   1. **One mean:** When there is only one x-value, the regression model simplifies to 𝑦=𝑏. If 𝑦 is non-metric, you can rank-transform it. Apply the assumptions (homoscedasticity doesn’t apply since there is only one 𝑥). Mention in passing that these intercept-only models are called [one-sample t-test and Wilcoxon Signed Rank test respectively](https://lindeloev.github.io/tests-as-linear/#t1).
   2. **Two means:** If we put two variables 1 apart on the x-axis, the difference between the means is the slope. Great! It is accessible to our swizz army knife called linear modeling. Apply the assumption checks to see that homoscedasticity reduces to equal variance between groups. This is called an [independent t-test](https://lindeloev.github.io/tests-as-linear/#t2). Do a few worked examples and exercises, maybe adding Welch’s test, and do the rank-transformed version, called Mann-Whitney U.
   3. *Paired samples:* Violates the independence assumption. After computing pairwise differences, this is equivalent to 2.1 (one intercept), though it is called the [paired t-test and Wilcoxon’s matched pairs](https://lindeloev.github.io/tests-as-linear/#tpair).
3. **Special case #2: Three or more means (ANOVAs)**
   1. *[Dummy coding](https://lindeloev.github.io/tests-as-linear/#dummy) of categories:* How one regression coefficient for each level of a factor models an intercept for each level when multiplied by a binary indicator. This is just extending what we did in 2.1. to make this data accessible to linear modeling.
   2. *Means of one variable:* [One-way ANOVA](https://lindeloev.github.io/tests-as-linear/#anova1).
   3. *Means of two variables:* [Two-way ANOVA](https://lindeloev.github.io/tests-as-linear/#anova2).
4. **Special case #3: Three or more proportions (Chi-Square)**
   1. *Logarithmic transformation:* Making multiplicative models linear using logarithms, thus modeling proportions. See [this excellent introduction](https://www.uni-tuebingen.de/fileadmin/Uni_Tuebingen/SFB/SFB_833/A_Bereich/A1/Christoph_Scheepers_-_Statistikworkshop.pdf) to the equivalence of log-linear models and Chi-Square tests as models of proportions. Also needs to introduce (log-)odds ratios. When the multiplicative model is made summative using logarithms, we just add the dummy-coding trick from 3.1, and see that the models are identical to the ANOVA models in 3.2 and 3.3, only the interpretation of the coefficients have changed.
   2. *Proportions of one variable:* [Goodness of fit](https://lindeloev.github.io/tests-as-linear/#goodness).
   3. *Proportions of two variables:* [Contingency tables](https://lindeloev.github.io/tests-as-linear/#contingency).
5. **Hypothesis testing:**
   1. *Hypothesis testing as model comparisons:* Hypothesis testing is the act of choosing between a full model and one where a parameter is fixed to a particular value (often zero, i.e., effectively excluded from the model) instead of being estimated. For example, when fixing one of the two means to zero in the [t-test](https://lindeloev.github.io/tests-as-linear/#t2), we study how well a single mean (a [one-sample t-test](https://lindeloev.github.io/tests-as-linear/#t1)) explains all the data from both groups. If it does a good job, we prefer this model over the two-mean model because it is simpler. So hypothesis testing is just comparing linear models to make more qualitative statements than the truly quantitative statements which were covered in bullets 1-4 above. As tests of single parameters, hypothesis testing is therefore less informative However, when testing multiple parameters at the same time (e.g., a factor in ANOVA), model comparison becomes invaluable.
   2. *Likelihood ratios:* Likelihood ratios are the swizz army knife which will do model comparison all the way from the one-sample t-test to GLMMs. BIC penalizes model complexity. Moreover, add priors and you’ve got Bayes Factors. One tool, and you’re done. I’ve used LRTs in the ANOVAs above.

# 10 Limitations

I have made a few simplifications for clarity:

1. I have not covered assumptions in the examples. This will be another post! But all assumptions of all tests come down to the usual three: a) independence of data points, b) normally distributed residuals, and c) homoscedasticity.
2. I assume that all null hypotheses are the absence of an effect, but everything works the same for non-zero null hypotheses.
3. I have not discussed inference. I am only including p-values in the comparisons as a crude way to show the equivalences between the underlying models since people care about p-values. Parameter estimates will show the same equivalence. How to do *inference* is another matter. Personally, I’m a Bayesian, but going Bayesian here would render it less accessible to the wider audience. Also, doing [robust models](https://en.wikipedia.org/wiki/Robust_statistics) would be preferable, but fail to show the equivalences.
4. Several named tests are still missing from the list and may be added at a later time. This includes the Sign test (require large N to be reasonably approximated by a linear model), Friedman as RM-ANOVA on `rank(y)`, McNemar, and Binomial/Multinomial. See stuff on these in [the section on links to further equivalences](https://lindeloev.github.io/tests-as-linear/#links). If you think that they should be included here, feel free to submit “solutions” to [the github repo](https://github.com/lindeloev/tests-as-linear/) of this doc!