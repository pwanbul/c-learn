CC=g++
SRCS=main.cpp\
     Num.cpp\
	 test1.cpp\
	 test2.cpp
OBJS=$(SRCS:.cpp=.o)


EXEC=app

start:$(OBJS)
	$(CC) -o $(EXEC) $(OBJS)

.cpp.o:
	$(CC) -o $@ -c $< -I./ -std=c++11

clean:
	rm -rf $(OBJS)


