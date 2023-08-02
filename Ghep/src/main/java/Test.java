import org.springframework.security.crypto.bcrypt.BCrypt;

public class Test {
	public static void main(String[] args) {
		System.out.println(BCrypt.hashpw("123456", BCrypt.gensalt(12)));
	}
}
