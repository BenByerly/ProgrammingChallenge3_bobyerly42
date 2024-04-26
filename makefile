CC = gcc 
CFLAGS = -Wall -pthread

SRCS = bobyerly42_prog3.c 
OBJS = $(SRCS:.c=.o)
TARGET = bobyerly42_prog3

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

%.o: %.c 
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)