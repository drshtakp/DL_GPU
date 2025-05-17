# DL_GPU_F2023 Anti-Brightspace Course Site

Fall 2023 GDS Seminar with GPU and Deep Learning Thrusts

-   BYOD (Bring Your Own Device)
-   This Github: <https://github.com/PurdueNWP/DL_GPU_F2023>
    -   Invitation: <https://github.com/PurdueNWP/DL_GPU_F2023/invitations>
-   Slack Channel **gds_seminar_f2023** in Workspace <https://eaps-data-science.slack.com>
-   Datacamp: <https://app.datacamp.com/groups/stat-511-statistical-methods/>
-   Purdue RCAC Gilbreth clusters: <https://www.rcac.purdue.edu/compute/gilbreth>

## Syllabus

Instructor: Wen-wen Tung [mailto:wwtung\@purdue.edu](mailto:wwtung@purdue.edu){.uri}

Delivery modality: In-Person

Meeting: Wednesdays 12:30-1:20PM, HAMP 2107

### Topics

-   Literature on AI, especially in Geosciences and Sustainability
-   High-level understanding of parallel computing and HPC with the goal of getting hands-on
-   GPU (Graphical Processing Units) concepts
-   Fast Python with GPU
    -   Deep Learning with python
    -   Maybe Numba
-   Hands-on exercises in class or self-paced Datacamp assignments

### Exercises and Assignments

-   If you haven't done so, please accept the invitation <https://www.datacamp.com/groups/shared_links/769d2f480b0dcf4d5b4d58d90bca09b79b49843cbecec9b41f1d7c6eefbbf583>

-   Check out Team EAPS591 Assignments in the workspace <https://app.datacamp.com/groups/stat-511-statistical-methods/>

    -   These assignments are not graded, and the due dates are only recommendations
    -   These are the minimum skills to participate in next semester's FourCastNet project <https://docs.nvidia.com/deeplearning/modulus/modulus-v2209/user_guide/neural_operators/fourcastnet.html>

-   Other course materials are derived from online sources including Nvidia Deep Learning Institute <https://www.nvidia.com/en-us/training/online/>

### Grades

Ungraded, everyone getting A

## Live Schedule

-   **Week 1 08/23/2023**

Organizational Meeting. Survey of the group

-   **Week 2 08/29/2023**

    -   Review/Introduction to Machine Learning
    -   Group Reading of Wang, H., Fu, T., Du, Y. et al. Scientific discovery in the age of artificial intelligence. Nature 620, 47--60 (2023). <https://doi.org/10.1038/s41586-023-06221-2>
    -   Purdue RCAC HPC Gilbreth and Brown. GDSP Resources Overview.

-   **Week 3 09/06/2023**

    -   Causality and Correlation
    -   Introduction to ML Continued/Bias Variance Tradeoff
    -   Purdue RCAC HPC Gilbreth Setup

-   **Week 4 09/13/2023**

    Career Fair, No Class Meeting

-   **Week 5 09/20/2023**

    -   Introduction to Deep Learning <https://github.com/EdwardRaff/Inside-Deep-Learning/tree/main>
    -   Try a few codes in Gilbreth
    -   `git fetch --all`, `git reset --hard origin/main`

-   **Week 6 09/26/2023 (Tuesday)**

Prof. Tung Traveling. Webinar: Power & Performance: Scaling Datacenters when the Chips are Down (Registration Required) <https://www.fte.network/ian-finder-fte-show>

-   **Week 7 10/04/2023**

Good News to students in this class: Nvidia Deep Learning Institute (DLI) now offers a promotion code for new student enrollments for any DLI online self-paced courses for one year. The promo code is DLITEACHPR23_16_GNQZ_72

Follow [this instruction](dli-nvaie-2.0-launch-how-to-redeem-self-paced-online-course-discount-r3.pdf) to redeem the code. Please do not share the code in public as it is only good for 200 new enrollments.

**Inside Deep Learning by Edward Raff is available through Purdue Library:** <https://purdue.primo.exlibrisgroup.com/permalink/01PURDUE_PUWL/kov9gv/alma99170258611601081>

To "hard reset" github: \`

-   `git fetch --all`

-   `git reset --hard origin/master`

-   **Week 8 10/11/2023**

Day after October Break; the remaining part of the week will be very cramped; let's take a break. Happy extended October Break.

-   **Week 9 10/18/2023**

    -   ECMWF Forecasts <https://www.ecmwf.int/en/forecasts>
    -   ECMWF Weather Charts: <https://charts.ecmwf.int/>
    -   ECMWF announcement about AISF: <https://www.ecmwf.int/en/about/media-centre/aifs-blog/2023/ECMWF-unveils-alpha-version-of-new-ML-model>
    -   NVidia FourCastNet: <https://docs.nvidia.com/deeplearning/modulus/modulus-sym/user_guide/neural_operators/fourcastnet.html>
    -   Jigsaw exercise in Week09 folder

-   **Week 10 10/25/2023**

    -   FourCastNet paper (also in Week10 folder) <https://arxiv.org/abs/2202.11214>

-   **Week 11 11/01/2023**

-   FourCastNet Paper Continued (also in Week10 folder) <https://arxiv.org/abs/2202.11214>

-   **Week 12 11/08/2023**

In the terminal of **\>\_Gilbreth Shell Access**, type

```         
cd DL_GPU_F2023
git fetch --all
git reset --hard origin/main
```

-   ISLP <https://intro-stat-learning.github.io/ISLP/index.html> The ISLP package doesn't run on Gilbreth, but since it's lightweight you could try to run in on your own laptop or Google Colab

-   ISLR/ISLP Github: <https://github.com/intro-stat-learning/ISLP_labs/tree/stable>

-   ISLR videos on Deep Learning: <https://www.youtube.com/playlist?list=PLoROMvodv4rOzrYsAxzQyHb8n_RWNuS1e>
    -   (Intro) <https://youtu.be/jJb2qytbcNg?feature=shared>
    -   (CNN) <https://youtu.be/ggOZuZnA6is?feature=shared>
    -   (RNN) <https://youtu.be/MexNVKPwu7g?feature=shared>

-   **Week 13 11/15/2023**

    -   Transformer (Attention is all you need Colab Version) http://nlp.seas.harvard.edu/annotated-transformer/
    
    Requires data download from https://www.statmt.org/europarl/
    
    -  Learning skillful medium-range global weather forecasting https://www.science.org/doi/10.1126/science.adi2336
    -   Graph Neuronet (https://github.com/steveazzolin/gdl_tutorial_turinginst)

-   **Week 14 11/22/2023**

Happy Thanksgiving

-   **Week 15 11/29/2023**

Gillian Ferguson

-   **Week 16 12/06/2023**

No Class in the Dead Week. Prof. Tung attending COP28.
