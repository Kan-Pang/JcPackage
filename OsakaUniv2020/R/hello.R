count.to.case <- function(df, count.variabe) {
  temp <- lapply(df, rep, df[[count.variabe]])
  temp <- as.data.frame(temp)
  temp[-which(colnames(temp) == count.variabe)]
}

# count.to.case(df = df.count,  count.variabe = "Freq")

Satisfaction <-
  as.table(array(c(1, 2, 0, 0, 3, 3, 1, 2,
                   11, 17, 8, 4, 2, 3, 5, 2,
                   1, 0, 0, 0, 1, 3, 0, 1,
                   2, 5, 7, 9, 1, 1, 3, 6),
                 dim = c(4, 4, 2),
                 dimnames =
                   list(Income =
                          c("<5000", "5000-15000",
                            "15000-25000", ">25000"),
                        "Job Satisfaction" =
                          c("V_D", "L_S", "M_S", "V_S"),
                        Gender = c("Female", "Male"))))


