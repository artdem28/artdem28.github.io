.PHONY: preview

preview:
	@lsof -ti:8000 | xargs kill -9 2>/dev/null || true
	@echo "Starting local server at http://localhost:8000"
	@echo "Press Ctrl+C to stop"
	python3 -m http.server 8000
