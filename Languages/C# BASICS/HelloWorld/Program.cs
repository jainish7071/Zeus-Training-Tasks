namespace HelloWorld
{
    public class VariableAndConstant
    {
        int number;
        int Number;
        const float Pi = 3.14f;
        // cannot start with the number
        // cannot include space
        // cannot be a reserved keywords
        // Use meaning full name
        // Three naming convention in c language
        // Camel Case : firstName (variable)
        // Pascal Case : FirstName (constant)
        // Hungarian Notation : strFirstName (not use in c#)
    }
    public class PrimitiveDataTypes
    {
        /*
            C# datatypes 
               ---Integer numbers
               - int
               - byte
               - short
               - long

               ---Real numbers
               - float f
               - double (default)
               - decimal m

               - char
               - bool
            */
    }
    public class NonPremetiveDataTypes
    {
        /*
            String
            Array
            Enum
            Class
         */
    }
    public class Overflowing
    {
        /* 
         * byte number = 255;
         * number = number + 1; ---> 0 (because of overflow)
         * But in c# there is not anything that default overflow 
         * here you got an error that overflow
         * checked is use to stop the overflow
         * 
        */
        /*
        checked{
            byte number = 255;
            number = number + 1;
        }  this will stop the overflow and throw an exception
        */
    }
    public class ImplicitTypeConversion
    {
        // byte b = 1;
        // int i = b;


        // int i = 1;
        // float f = i;
    }
    public class ExplicitTypeConversion
    {
        // int i = 1;
        // byte b = i;   --> this won't compile


        // byte b = (byte)i;

        // float f = 1.0f;
        // int i = (int)f;

        //string s = "1";
        // int i = (int)s; --> this won't compile

        // int i = Convert.ToInt32(s);
        // int j = int.parse(s);
    }
    public class Program
    {
        static void Main(String[] args)
        {
            // Console.WriteLine("{0} {1}",byte.MinValue , byte.MaxValue);
            // Console.WriteLine("{0} {1}", float.MinValue, float.MaxValue);
            //const float Pi = 3.14f;

            //byte b = 1;
            //int i = b;

            //int i = 1;
            //byte b = (byte)i;

            //string number = "1234";
            //int i = Convert.ToInt32(number);
            //int j = int.Parse(number);
            /*
            try
            {
                byte b = Convert.ToByte(number);
                Console.WriteLine(b);
            }catch(Exception e)
            {
                Console.WriteLine("Something goes wrong");
            }
            try
            {
                string str = "true";
                bool b = Convert.ToBoolean(str);
                Console.WriteLine(b);
            }
            catch (Exception)
            {
                Console.WriteLine("Hello this ccan no t be done");
                throw;
            }
            */


            
        }
    }
}
