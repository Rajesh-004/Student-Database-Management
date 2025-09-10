package in.student.util;

public class InputValidator {
	public static String validateInput(String name, String email, String course) {
		String message = null;

		if (name == null) {
			return "Name field cannot be Null";
		}
		if (name.trim().isEmpty()) {
			return "Name field cannot be empty";
		}
		if (name.matches("\\d+")) {
			return "Name field Cannot be a number";
		}

		if (email == null) {
			return "Email field cannot be Null";
		}
		if (email.trim().isEmpty()) {
			return "Email field cannot be empty";
		}
		if (email.matches("\\d+")) {
			return "Email field Cannot be a number";
		}
		if (!email.contains("@gmail.com")) {
			return "Invalid email";
		}

		if (course == null) {
			return "Course field cannot be Null";
		}

		if (course.trim().isEmpty()) {
			return "course field cannot be empty";
		}

		if (course.matches("\\d+")) {
			return "course field Cannot be a number";
		}

		return message;

	}
}
