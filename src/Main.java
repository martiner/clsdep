import java.util.Scanner;

public class Main {

  public static void main(String... args) throws Exception {
		try {
			Class.forName("FOO").newInstance();
		} catch (Exception ignore) {}

		System.out.print("Delete the target directory then hit ENTER: ");
		new Scanner(System.in).nextLine();

		Class.forName("Depend").newInstance();
	}
}