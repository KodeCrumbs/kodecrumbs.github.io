document.addEventListener("DOMContentLoaded", () => {
	var toggle = document.getElementById("dark-mode-toggle");
	var icon = document.getElementById("dark-mode-icon");
	var darkTheme = document.getElementById("dark-mode");
	var savedTheme = localStorage.getItem("dark-mode-storage") || "light";
	setTheme(savedTheme);
	toggle.addEventListener("click", () => {
		if (toggle.classList.contains("colorscheme-dark")) {
			setTheme("dark");
		} else if (toggle.classList.contains("colorscheme-light")) {
			setTheme("light");
		}
	});

	function setTheme(mode) {
		localStorage.setItem("dark-mode-storage", mode);
		if (mode === "dark") {
			darkTheme.disabled = false;
			toggle.classList.remove("colorscheme-dark");
			toggle.classList.add("colorscheme-light");
			icon.className = "fa fa-moon-o fa-fw";
		} else if (mode === "light") {
			darkTheme.disabled = true;
			toggle.classList.remove("colorscheme-light");
			toggle.classList.add("colorscheme-dark");
			icon.className = "fa fa-adjust fa-fw";
		}
	}
});