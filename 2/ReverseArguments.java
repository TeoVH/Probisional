public class ReverseArguments {
	public static void main(String[] args) {
		if (args.length == 0) {
			System.err.println("Error: Missing arguments");
		}
		else {
			for (int i = args.length - 1; i >= 0; i--) {
				System.out.println(args[i]);
			}
		}
	}
}	
