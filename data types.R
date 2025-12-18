file_url <- "https://raw.githubusercontent.com/ShamimtheAnalyst/YouTube-Repo/refs/heads/main/friends.csv"
friends <- read.csv(file_url)

View(friends)
str(friends)


friends$Size <- as.factor(friends$Size)
str(friends$Size)



friends$Age <- as.integer(friends$Age)
str(friends$Age)


levels(friends$Size)

factor(friends$Size, levels = c("Short", "Medium", "Tall"))
levels(friends$Size)



friends$Old <- friends$Age > 40

class(friends$Old)


str(friends)






