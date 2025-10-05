function nextStep(step) {
    // Hide current step
    document.querySelectorAll('.wizard-step').forEach(s => s.classList.remove('active'));
    document.querySelectorAll('.step').forEach(s => s.classList.remove('active'));
    
    // Show next step
    document.getElementById('step' + step).classList.add('active');
    document.querySelector(`.step[data-step="${step}"]`).classList.add('active');
    
    // Scroll to top
    window.scrollTo(0, 0);
    
    // Simulate autosave
    console.log('Form data autosaved');
}

function prevStep(step) {
    nextStep(step);
}

// File upload handlers
document.addEventListener('DOMContentLoaded', function() {
    const fileInputs = document.querySelectorAll('input[type="file"]');
    
    fileInputs.forEach(input => {
        input.addEventListener('change', function(e) {
            const fileName = e.target.files[0]?.name;
            if (fileName) {
                const uploadBox = e.target.previousElementSibling;
                uploadBox.style.borderColor = '#059669';
                uploadBox.style.background = '#d1fae5';
                uploadBox.querySelector('p').textContent = `✓ ${fileName}`;
            }
        });
    });
});
