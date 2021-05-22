library("dplyr")
library("ggpubr")


##############################################################################
# Load Languages
AssemblyScript <- read.csv('C:/TuDublin/Masters Project/Git Clone/MastersProject2021/FinalResultsPerLanguage/CSV/AssemblyScript.csv')
C <- read.csv('C:/TuDublin/Masters Project/Git Clone/MastersProject2021/FinalResultsPerLanguage/CSV/C.csv')
CPP <- read.csv('C:/TuDublin/Masters Project/Git Clone/MastersProject2021/FinalResultsPerLanguage/CSV/CPP.csv')
Rust <- read.csv('C:/TuDublin/Masters Project/Git Clone/MastersProject2021/FinalResultsPerLanguage/CSV/Rust.csv')



##############################################################################
# Density Plot - AssemblyScript 
ggdensity(AssemblyScript$BinarySearch)
ggdensity(AssemblyScript$BubbleSort)
ggdensity(AssemblyScript$Fibonacci)
ggdensity(AssemblyScript$HeapSort)
ggdensity(AssemblyScript$LinearSearch)
ggdensity(AssemblyScript$MergeSort)
ggdensity(AssemblyScript$NQueen24)
ggdensity(AssemblyScript$NQueen27)
ggdensity(AssemblyScript$PrimeNumber)
ggdensity(AssemblyScript$SelectionSort)
ggdensity(AssemblyScript$ShellSort)

# Normality Plot - AssemblyScript
ggqqplot(AssemblyScript$BinarySearch)
ggqqplot(AssemblyScript$BubbleSort)
ggqqplot(AssemblyScript$Fibonacci)
ggqqplot(AssemblyScript$HeapSort)
ggqqplot(AssemblyScript$LinearSearch)
ggqqplot(AssemblyScript$MergeSort)
ggqqplot(AssemblyScript$NQueen24)
ggqqplot(AssemblyScript$NQueen27)
ggqqplot(AssemblyScript$PrimeNumber)
ggqqplot(AssemblyScript$SelectionSort)
ggqqplot(AssemblyScript$ShellSort)

# Histograms - AssemblyScript
hist(AssemblyScript$BinarySearch)
hist(AssemblyScript$BubbleSort)
hist(AssemblyScript$Fibonacci)
hist(AssemblyScript$HeapSort)
hist(AssemblyScript$LinearSearch)
hist(AssemblyScript$MergeSort)
hist(AssemblyScript$NQueen24)
hist(AssemblyScript$NQueen27)
hist(AssemblyScript$PrimeNumber)
hist(AssemblyScript$SelectionSort)
hist(AssemblyScript$ShellSort)

# Shapiro-Wilk normality test - AssemblyScript
shapiro.test(AssemblyScript$BinarySearch)     # W = 0.89333,  p-value = 9.081e-08
shapiro.test(AssemblyScript$BubbleSort)       # W = 0.947,    p-value = 0.000131  
shapiro.test(AssemblyScript$Fibonacci)        # W = 0.9183,   p-value = 1.921e-06
shapiro.test(AssemblyScript$HeapSort)         # W = 0.92146,  p-value = 2.93e-06
shapiro.test(AssemblyScript$LinearSearch)     # W = 0.85618,  p-value = 1.97e-09
shapiro.test(AssemblyScript$MergeSort)        # W = 0.91813,  p-value = 1.878e-06 
shapiro.test(AssemblyScript$NQueen24)         # W = 0.95549,  p-value = 0.0005585 
shapiro.test(AssemblyScript$NQueen27)         # W = 0.9585,   p-value = 0.0009603 
shapiro.test(AssemblyScript$PrimeNumber)      # W = 0.91855,  p-value = 1.986e-06
shapiro.test(AssemblyScript$SelectionSort)    # W = 0.73501,  p-value = 1.995e-13
shapiro.test(AssemblyScript$ShellSort)        # W = 0.89884,  p-value = 1.713e-07

# independent 2-group Mann-Whitney U Tests

# BinarySearch
wilcox.test(AssemblyScript$BinarySearch,C$BinarySearch)     # W = 12582,  p-value < 2.2e-16
wilcox.test(AssemblyScript$BinarySearch,CPP$BinarySearch)   # W = 12408,  p-value < 2.2e-16
wilcox.test(AssemblyScript$BinarySearch,Rust$BinarySearch)  # W = 13720,  p-value < 2.2e-16

# BubbleSort
wilcox.test(AssemblyScript$BubbleSort,C$BubbleSort)         # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$BubbleSort,CPP$BubbleSort)       # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$BubbleSort,Rust$BubbleSort)      # W = 14400,  p-value < 2.2e-16

# Fibonacci
wilcox.test(AssemblyScript$Fibonacci,C$Fibonacci)           # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$Fibonacci,CPP$Fibonacci)         # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$Fibonacci,Rust$Fibonacci)        # W = 14400,  p-value < 2.2e-16

# HeapSort
wilcox.test(AssemblyScript$HeapSort,C$HeapSort)             # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$HeapSort,CPP$HeapSort)           # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$HeapSort,Rust$HeapSort)          # W = 14400,  p-value < 2.2e-16

# LinearSearch
wilcox.test(AssemblyScript$LinearSearch,C$LinearSearch)     # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$LinearSearch,CPP$LinearSearch)   # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$LinearSearch,Rust$LinearSearch)  # W = 14400,  p-value < 2.2e-16

# MergeSort
wilcox.test(AssemblyScript$MergeSort,C$MergeSort)           # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$MergeSort,CPP$MergeSort)         # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$MergeSort,Rust$MergeSort)        # W = 362,    p-value < 2.2e-16

# NQueen24
wilcox.test(AssemblyScript$NQueen24,C$NQueen24)             # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$NQueen24,CPP$NQueen24)           # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$NQueen24,Rust$NQueen24)          # W = 14400,  p-value < 2.2e-16

# NQueen27
wilcox.test(AssemblyScript$NQueen27,C$NQueen27)             # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$NQueen27,CPP$NQueen27)           # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$NQueen27,Rust$NQueen27)          # W = 14400,  p-value < 2.2e-16

# PrimeNumber
wilcox.test(AssemblyScript$PrimeNumber,C$PrimeNumber)       # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$PrimeNumber,CPP$PrimeNumber)     # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$PrimeNumber,Rust$PrimeNumber)    # W = 14400,  p-value < 2.2e-16

# SelectionSort
wilcox.test(AssemblyScript$SelectionSort,C$SelectionSort)     # W = 14400, p-value < 2.2e-16
wilcox.test(AssemblyScript$SelectionSort,CPP$SelectionSort)   # W = 14400, p-value < 2.2e-16
wilcox.test(AssemblyScript$SelectionSort,Rust$SelectionSort)  # W = 14400, p-value < 2.2e-16

# ShellSort
wilcox.test(AssemblyScript$ShellSort,C$ShellSort)           # W = 14325,  p-value < 2.2e-16
wilcox.test(AssemblyScript$ShellSort,CPP$ShellSort)         # W = 14400,  p-value < 2.2e-16
wilcox.test(AssemblyScript$ShellSort,Rust$ShellSort)        # W = 9598,   p-value = 8.265e-06


##############################################################################
# Density Plot - C 
ggdensity(C$BinarySearch)
ggdensity(C$BubbleSort)
ggdensity(C$Fibonacci)
ggdensity(C$HeapSort)
ggdensity(C$LinearSearch)
ggdensity(C$MergeSort)
ggdensity(C$NQueen24)
ggdensity(C$NQueen27)
ggdensity(C$PrimeNumber)
ggdensity(C$SelectionSort)
ggdensity(C$ShellSort)

# Normality Plot 1 - C
ggqqplot(C$BinarySearch)
ggqqplot(C$BubbleSort)
ggqqplot(C$Fibonacci)
ggqqplot(C$HeapSort)
ggqqplot(C$LinearSearch)
ggqqplot(C$MergeSort)
ggqqplot(C$NQueen24)
ggqqplot(C$NQueen27)
ggqqplot(C$PrimeNumber)
ggqqplot(C$SelectionSort)
ggqqplot(C$ShellSort)

# Histograms - C
hist(C$BinarySearch)
hist(C$BubbleSort)
hist(C$Fibonacci)
hist(C$HeapSort)
hist(C$LinearSearch)
hist(C$MergeSort)
hist(C$NQueen24)
hist(C$NQueen27)
hist(C$PrimeNumber)
hist(C$SelectionSort)
hist(C$ShellSort)

# Shapiro-Wilk normality test - C
shapiro.test(C$BinarySearch)    # W = 0.85759,  p-value = 2.251e-09
shapiro.test(C$BubbleSort)      # W = 0.90343,  p-value = 2.95e-07
shapiro.test(C$Fibonacci)       # W = 0.87602,  p-value = 1.394e-08
shapiro.test(C$HeapSort)        # W = 0.92663,  p-value = 5.966e-06
shapiro.test(C$LinearSearch)    # W = 0.92993,  p-value = 9.529e-06
shapiro.test(C$MergeSort)       # W = 0.92818,  p-value = 7.426e-06
shapiro.test(C$NQueen24)        # W = 0.95149,  p-value = 0.0002786
shapiro.test(C$NQueen27)        # W = 0.73445,  p-value = 1.927e-13
shapiro.test(C$PrimeNumber)     # W = 0.87064,  p-value = 8.051e-09
shapiro.test(C$SelectionSort)   # W = 0.91986,  p-value = 2.365e-06
shapiro.test(C$ShellSort)       # W = 0.79129,  p-value = 9.023e-12


# independent 2-group Mann-Whitney U Tests

# BinarySearch
wilcox.test(C$BinarySearch,AssemblyScript$BinarySearch)     # W = 1818,   p-value < 2.2e-16
wilcox.test(C$BinarySearch,CPP$BinarySearch)                # W = 6410,   p-value = 0.1421    ***
wilcox.test(C$BinarySearch,Rust$BinarySearch)               # W = 10409,  p-value = 2.427e-09

# BubbleSort
wilcox.test(C$BubbleSort,AssemblyScript$BubbleSort)         # W = 0,      p-value < 2.2e-16
wilcox.test(C$BubbleSort,CPP$BubbleSort)                    # W = 11118,  p-value = 3.225e-13
wilcox.test(C$BubbleSort,Rust$BubbleSort)                   # W = 626,    p-value < 2.2e-16

# Fibonacci
wilcox.test(C$Fibonacci,AssemblyScript$Fibonacci)           # W = 0,      p-value < 2.2e-16
wilcox.test(C$Fibonacci,CPP$Fibonacci)                      # W = 8162,   p-value = 0.07379   ***
wilcox.test(C$Fibonacci,Rust$Fibonacci)                     # W = 12296,  p-value < 2.2e-16

# HeapSort
wilcox.test(C$BinarySearch,AssemblyScript$BinarySearch)     # W = 1818,   p-value < 2.2e-16
wilcox.test(C$BinarySearch,CPP$BinarySearch)                # W = 6410,   p-value = 0.1421    ***
wilcox.test(C$BinarySearch,Rust$BinarySearch)               # W = 10409,  p-value = 2.427e-09

# LinearSearch
wilcox.test(C$LinearSearch,AssemblyScript$LinearSearch)     # W = 0,      p-value < 2.2e-16
wilcox.test(C$LinearSearch,CPP$LinearSearch)                # W = 8953,   p-value = 0.001119
wilcox.test(C$LinearSearch,Rust$LinearSearch)               # W = 14280,  p-value < 2.2e-16

# MergeSort
wilcox.test(C$MergeSort,AssemblyScript$MergeSort)           # W = 0,      p-value < 2.2e-16
wilcox.test(C$MergeSort,CPP$MergeSort)                      # W = 6934,   p-value = 0.6215    ***
wilcox.test(C$MergeSort,Rust$MergeSort)                     # W = 0,      p-value < 2.2e-16

# NQueen24
wilcox.test(C$NQueen24,AssemblyScript$NQueen24)             # W = 0,      p-value < 2.2e-16
wilcox.test(C$NQueen24,CPP$NQueen24)                        # W = 14090,  p-value < 2.2e-16
wilcox.test(C$NQueen24,Rust$NQueen24)                       # W = 5819,   p-value = 0.01026

# NQueen27
wilcox.test(C$NQueen27,AssemblyScript$NQueen27)             # W = 0,      p-value < 2.2e-16
wilcox.test(C$NQueen27,CPP$NQueen27)                        # W = 12789,  p-value < 2.2e-16
wilcox.test(C$NQueen27,Rust$NQueen27)                       # W = 2604,   p-value < 2.2e-16

# PrimeNumber
wilcox.test(C$PrimeNumber,AssemblyScript$PrimeNumber)       # W = 0,      p-value < 2.2e-16
wilcox.test(C$PrimeNumber,CPP$PrimeNumber)                  # W = 4661,   p-value = 2.354e-06
wilcox.test(C$PrimeNumber,Rust$PrimeNumber)                 # W = 0,      p-value < 2.2e-16

# SelectionSort
wilcox.test(C$SelectionSort,AssemblyScript$SelectionSort)   # W = 0,      p-value < 2.2e-16
wilcox.test(C$SelectionSort,CPP$SelectionSort)              # W = 8881,   p-value = 0.001779
wilcox.test(C$SelectionSort,Rust$SelectionSort)             # W = 0,      p-value < 2.2e-16

# ShellSort
wilcox.test(C$ShellSort,AssemblyScript$ShellSort)           # W = 75,     p-value < 2.2e-16
wilcox.test(C$ShellSort,CPP$ShellSort)                      # W = 6754,   p-value = 0.4074    ***
wilcox.test(C$ShellSort,Rust$ShellSort)                     # W = 529,    p-value < 2.2e-16


##############################################################################
# Density Plot - CPP 
ggdensity(CPP$BinarySearch)
ggdensity(CPP$BubbleSort)
ggdensity(CPP$Fibonacci)
ggdensity(CPP$HeapSort)
ggdensity(CPP$LinearSearch)
ggdensity(CPP$MergeSort)
ggdensity(CPP$NQueen24)
ggdensity(CPP$NQueen27)
ggdensity(CPP$PrimeNumber)
ggdensity(CPP$SelectionSort)
ggdensity(CPP$ShellSort)

# Normality Plot 1 - CPP
ggqqplot(CPP$BinarySearch)
ggqqplot(CPP$BubbleSort)
ggqqplot(CPP$Fibonacci)
ggqqplot(CPP$HeapSort)
ggqqplot(CPP$LinearSearch)
ggqqplot(CPP$MergeSort)
ggqqplot(CPP$NQueen24)
ggqqplot(CPP$NQueen27)
ggqqplot(CPP$PrimeNumber)
ggqqplot(CPP$SelectionSort)
ggqqplot(CPP$ShellSort)

# Histograms - CPP
hist(CPP$BinarySearch)
hist(CPP$BubbleSort)
hist(CPP$Fibonacci)
hist(CPP$HeapSort)
hist(CPP$LinearSearch)
hist(CPP$MergeSort)
hist(CPP$NQueen24)
hist(CPP$NQueen27)
hist(CPP$PrimeNumber)
hist(CPP$SelectionSort)
hist(CPP$ShellSort)

# Shapiro-Wilk normality test - CPP
shapiro.test(CPP$BinarySearch)    # W = 0.88697,  p-value = 4.471e-08
shapiro.test(CPP$BubbleSort)      # W = 0.86648,  p-value = 5.32e-09
shapiro.test(CPP$Fibonacci)       # W = 0.87035,  p-value = 7.82e-09
shapiro.test(CPP$HeapSort)        # W = 0.92485,  p-value = 4.656e-06
shapiro.test(CPP$LinearSearch)    # W = 0.94416,  p-value = 8.256e-05
shapiro.test(CPP$MergeSort)       # W = 0.85896,  p-value = 2.564e-09
shapiro.test(CPP$NQueen24)        # W = 0.56648,  p-value < 2.2e-16
shapiro.test(CPP$NQueen27)        # W = 0.80628,  p-value = 2.8e-11
shapiro.test(CPP$PrimeNumber)     # W = 0.76245,  p-value = 1.183e-12
shapiro.test(CPP$SelectionSort)   # W = 0.91616,  p-value = 1.451e-06
shapiro.test(CPP$ShellSort)       # W = 0.91794,  p-value = 1.832e-06

# independent 2-group Mann-Whitney U Tests

# BinarySearch
wilcox.test(CPP$BinarySearch,AssemblyScript$BinarySearch)         # W = 1992,   p-value < 2.2e-16
wilcox.test(CPP$BinarySearch,C$BinarySearch)                      # W = 7990,   p-value = 0.1421    ***
wilcox.test(CPP$BinarySearch,Rust$BinarySearch)                   # W = 10886,  p-value = 7.219e-12

# BubbleSort
wilcox.test(CPP$BubbleSort,AssemblyScript$BubbleSort)             # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$BubbleSort,C$BubbleSort)                          # W = 3282,   p-value = 3.225e-13
wilcox.test(CPP$BubbleSort,Rust$BubbleSort)                       # W = 73,     p-value < 2.2e-16

# Fibonacci
wilcox.test(CPP$Fibonacci,AssemblyScript$Fibonacci)               # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$Fibonacci,C$Fibonacci)                            # W = 6238,   p-value = 0.07379   ***
wilcox.test(CPP$Fibonacci,Rust$Fibonacci)                         # W = 11568,  p-value = 4.606e-16

# HeapSort
wilcox.test(CPP$HeapSort,AssemblyScript$HeapSort)                 # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$HeapSort,C$HeapSort)                              # W = 6977,   p-value = 0.6791    ***
wilcox.test(CPP$HeapSort,Rust$HeapSort)                           # W = 3111,   p-value = 2.901e-14

# LinearSearch
wilcox.test(CPP$LinearSearch,AssemblyScript$LinearSearch)         # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$LinearSearch,C$LinearSearch)                      # W = 5447,   p-value = 0.001119
wilcox.test(CPP$LinearSearch,Rust$LinearSearch)                   # W = 14280,  p-value < 2.2e-16

# MergeSort
wilcox.test(CPP$MergeSort,AssemblyScript$MergeSort)               # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$MergeSort,C$MergeSort)                            # W = 7466,   p-value = 0.6215
wilcox.test(CPP$MergeSort,Rust$MergeSort)                         # W = 0,      p-value < 2.2e-16

# NQueen24
wilcox.test(CPP$NQueen24,AssemblyScript$NQueen24)                 # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$NQueen24,C$NQueen24)                              # W = 310,    p-value < 2.2e-16
wilcox.test(CPP$NQueen24,Rust$NQueen24)                           # W = 781,    p-value < 2.2e-16

# NQueen27
wilcox.test(CPP$NQueen27,AssemblyScript$NQueen27)                 # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$NQueen27,C$NQueen27)                              # W = 1611,   p-value < 2.2e-16
wilcox.test(CPP$NQueen27,Rust$NQueen27)                           # W = 872,    p-value < 2.2e-16

# PrimeNumber
wilcox.test(CPP$PrimeNumber,AssemblyScript$PrimeNumber)           # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$PrimeNumber,C$PrimeNumber)                        # W = 9739,   p-value = 2.354e-06
wilcox.test(CPP$PrimeNumber,Rust$PrimeNumber)                     # W = 0,      p-value < 2.2e-16

# SelectionSort
wilcox.test(CPP$SelectionSort,AssemblyScript$SelectionSort)       # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$SelectionSort,C$SelectionSort)                    # W = 5519,   p-value = 0.001779
wilcox.test(CPP$SelectionSort,Rust$SelectionSort)                 # W = 0,      p-value < 2.2e-16

# ShellSort
wilcox.test(CPP$ShellSort,AssemblyScript$ShellSort)               # W = 0,      p-value < 2.2e-16
wilcox.test(CPP$ShellSort,C$ShellSort)                            # W = 7646,   p-value = 0.4074
wilcox.test(CPP$ShellSort,Rust$ShellSort)                         # W = 565,    p-value < 2.2e-16


##############################################################################
# Density Plot - Rust 
ggdensity(Rust$BinarySearch)
ggdensity(Rust$BubbleSort)
ggdensity(Rust$Fibonacci)
ggdensity(Rust$HeapSort)
ggdensity(Rust$LinearSearch)
ggdensity(Rust$MergeSort)
ggdensity(Rust$NQueen24)
ggdensity(Rust$NQueen27)
ggdensity(Rust$PrimeNumber)
ggdensity(Rust$SelectionSort)
ggdensity(Rust$ShellSort)

# Normality Plot 1 - Rust
ggqqplot(Rust$BinarySearch)
ggqqplot(Rust$BubbleSort)
ggqqplot(Rust$Fibonacci)
ggqqplot(Rust$HeapSort)
ggqqplot(Rust$LinearSearch)
ggqqplot(Rust$MergeSort)
ggqqplot(Rust$NQueen24)
ggqqplot(Rust$NQueen27)
ggqqplot(Rust$PrimeNumber)
ggqqplot(Rust$SelectionSort)
ggqqplot(Rust$ShellSort)

# Histograms - Rust
hist(Rust$BinarySearch)
hist(Rust$BubbleSort)
hist(Rust$Fibonacci)
hist(Rust$HeapSort)
hist(Rust$LinearSearch)
hist(Rust$MergeSort)
hist(Rust$NQueen24)
hist(Rust$NQueen27)
hist(Rust$PrimeNumber)
hist(Rust$SelectionSort)
hist(Rust$ShellSort)

# Shapiro-Wilk normality test - Rust
shapiro.test(Rust$BinarySearch)     # W = 0.9888,   p-value = 0.4335
shapiro.test(Rust$BubbleSort)       # W = 0.91152,  p-value = 8.002e-07
shapiro.test(Rust$Fibonacci)        # W = 0.90205,  p-value = 2.501e-07
shapiro.test(Rust$HeapSort)         # W = 0.90527,  p-value = 3.685e-07
shapiro.test(Rust$LinearSearch)     # W = 0.45708,  p-value < 2.2e-16
shapiro.test(Rust$MergeSort)        # W = 0.56386,  p-value < 2.2e-16
shapiro.test(Rust$NQueen24)         # W = 0.97237,  p-value = 0.01424
shapiro.test(Rust$NQueen27)         # W = 0.79029,  p-value = 8.382e-12
shapiro.test(Rust$PrimeNumber)      # W = 0.88119,  p-value = 2.399e-08
shapiro.test(Rust$SelectionSort)    # W = 0.88721,  p-value = 4.591e-08
shapiro.test(Rust$ShellSort)        # W = 0.97768,  p-value = 0.04334


# independent 2-group Mann-Whitney U Tests

# BinarySearch
wilcox.test(Rust$BinarySearch,AssemblyScript$BinarySearch)            # W = 680,    p-value < 2.2e-16
wilcox.test(Rust$BinarySearch,C$BinarySearch)                         # W = 3991,   p-value = 2.427e-09
wilcox.test(Rust$BinarySearch,CPP$BinarySearch)                       # W = 3514,   p-value = 7.219e-12

# BubbleSort
wilcox.test(Rust$BubbleSort,AssemblyScript$BubbleSort)                # W = 0,      p-value < 2.2e-16
wilcox.test(Rust$BubbleSort,C$BubbleSort)                             # W = 13774,  p-value < 2.2e-16
wilcox.test(Rust$BubbleSort,CPP$BubbleSort)                           # W = 14327,  p-value < 2.2e-16

# Fibonacci
wilcox.test(Rust$Fibonacci,AssemblyScript$Fibonacci)                  # W = 0,      p-value < 2.2e-16
wilcox.test(Rust$Fibonacci,C$Fibonacci)                               # W = 2104,   p-value < 2.2e-16
wilcox.test(Rust$Fibonacci,CPP$Fibonacci)                             # W = 2832,   p-value = 4.606e-16

# HeapSort
wilcox.test(Rust$HeapSort,AssemblyScript$HeapSort)                    # W = 0,      p-value < 2.2e-16
wilcox.test(Rust$HeapSort,C$HeapSort)                                 # W = 11194,  p-value = 1.119e-13
wilcox.test(Rust$HeapSort,CPP$HeapSort)                               # W = 11289,  p-value = 2.901e-14

# LinearSearch
wilcox.test(Rust$LinearSearch,AssemblyScript$LinearSearch)            # W = 0,      p-value < 2.2e-16
wilcox.test(Rust$LinearSearch,C$LinearSearch)                         # W = 120,    p-value < 2.2e-16
wilcox.test(Rust$LinearSearch,CPP$LinearSearch)                       # W = 120,    p-value < 2.2e-16

# MergeSort
wilcox.test(Rust$MergeSort,AssemblyScript$MergeSort)                  # W = 14038,  p-value < 2.2e-16
wilcox.test(Rust$MergeSort,C$MergeSort)                               # W = 14400,  p-value < 2.2e-16
wilcox.test(Rust$MergeSort,CPP$MergeSort)                             # W = 14400,  p-value < 2.2e-16

# NQueen24
wilcox.test(Rust$NQueen24,AssemblyScript$NQueen24)                    # W = 0,      p-value < 2.2e-16
wilcox.test(Rust$NQueen24,C$NQueen24)                                 # W = 8581,   p-value = 0.01026
wilcox.test(Rust$NQueen24,CPP$NQueen24)                               # W = 13619,  p-value < 2.2e-16

# NQueen27
wilcox.test(Rust$NQueen27,AssemblyScript$NQueen27)                    # W = 0,      p-value < 2.2e-16
wilcox.test(Rust$NQueen27,C$NQueen27)                                 # W = 11796,  p-value < 2.2e-16
wilcox.test(Rust$NQueen27,CPP$NQueen27)                               # W = 13528,  p-value < 2.2e-16

# PrimeNumber
wilcox.test(Rust$PrimeNumber,AssemblyScript$PrimeNumber)              # W = 0,      p-value < 2.2e-16
wilcox.test(Rust$PrimeNumber,C$PrimeNumber)                           # W = 14400,  p-value < 2.2e-16
wilcox.test(Rust$PrimeNumber,CPP$PrimeNumber)                         # W = 14400,  p-value < 2.2e-16

# SelectionSort
wilcox.test(Rust$SelectionSort,AssemblyScript$SelectionSort)          # W = 0,      p-value < 2.2e-16
wilcox.test(Rust$SelectionSort,C$SelectionSort)                       # W = 14400,  p-value < 2.2e-16
wilcox.test(Rust$SelectionSort,CPP$SelectionSort)                     # W = 14400,  p-value < 2.2e-16

# ShellSort
wilcox.test(Rust$ShellSort,AssemblyScript$ShellSort)                  # W = 4802,   p-value = 8.265e-06
wilcox.test(Rust$ShellSort,C$ShellSort)                               # W = 13871,  p-value < 2.2e-16
wilcox.test(Rust$ShellSort,CPP$ShellSort)                             # W = 13835,  p-value < 2.2e-16


##############################################################################
##############################################################################
##############################################################################



