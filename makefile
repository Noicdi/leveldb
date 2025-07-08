all: clean build

build:
	@mkdir -p build
	@cmake -B build -DCMAKE_BUILD_TYPE=Debug -DCMAKE_POLICY_VERSION_MINIMUM=3.5 -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_CXX_STANDARD=17 .
	@cmake --build build

clean:
	@rm -rf build
