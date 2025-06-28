import joblib
import numpy as np

# Load your trained SVM model
svm = joblib.load("/content/svm_model.pkl")  # Change path if needed

# Extract weights and bias
if hasattr(svm, 'coef_'):
    weights = svm.coef_[0]       # Shape: (n_features,)
    bias = svm.intercept_[0]     # Scalar
else:
    raise ValueError("❌ Your model does not support 'coef_'. Make sure it is a linear kernel SVM.")

# Scale for fixed-point representation (e.g., x1000)
scaled_weights = (weights * 1000).astype(int)
scaled_bias = int(bias * 1000)

# Convert to comma-separated string
weights_str = ", ".join(str(w) for w in scaled_weights)

# Final text to write
output_text = f"Weights = {weights_str}\nBias = {scaled_bias}"

# Save to file
with open("/content/svm_weights_bias.txt", "w") as f:
    f.write(output_text)

print("✅ File generated at: /content/svm_weights_bias.txt")