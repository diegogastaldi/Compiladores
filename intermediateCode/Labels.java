package intermediateCode;
public class Labels {
	private static int l = 0;

	public static String getLabel() {
		return "L"+(++l);
	}
} 
