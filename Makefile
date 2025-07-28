# default settings
CXX = g++
CXXFLAGS = -std=c++17 -Wall
BUILD_DIR = build

# default target
all:
	@echo "To compile and run c++ file, run: make <filename>"

# compile and run
%: %.cpp
	@echo "--- Compiling ---"
#	$(CXX) $(CXXFLAGS) $< -o $(BUILD_DIR)/$@
	$(CXX) $< -o $(BUILD_DIR)/$@
#	@echo "Build output: $(BUILD_DIR)/$@ \n"
	@echo "\n--- Running ---"
	@./$(BUILD_DIR)/$@
	@echo "\n"