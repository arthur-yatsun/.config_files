# set up test/local variables
# include cli_scripts/local_config.sh


install:
	@echo "Install dependencies"
	pip install -r requirements.txt

	# @echo install using custom pip repo
	# pip install --trusted-host http://example.com -r requirements.txt
	#
	# <inside requirements.txt>
	# --extra-index-url http://example.com
	# mylib==100.500.0

	# @echo install using setup.py
	# pip install -e .

	# ! requires "test" extras in setup.py
	# @echo "Install tests dependencies"
	# pip install -e ".[test]"

test:
	@echo "Run tests"
	PYTHONPATH=. pytest ./tests -s --disable-warnings --log-cli-level=WARNING --cov-fail-under=100 --cov=.

coverage-html-report:
	@echo "Run test with coverage HTML report"
	PYTHONPATH=. pytest ./tests -s --disable-warnings --log-cli-level=WARNING --cov=. --cov-report html

lint:
	@echo "Check code style"
	flake8 . --max-complexity=10 --statistics --count

run:
	@echo "Format python code"
	black .

package:
	@echo "Build"
	# build tar.gz
	python setup.py sdist
	# build wheel
	python setup.py bdist_wheel
