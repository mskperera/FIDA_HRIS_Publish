using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Smarter_HRIS.App_Code
{
    public class Global
    {
        static string _importantData;
        static string _importantData2;
        static string _importantData3;

        public static string ImportantData
        {
            get
            {
                return _importantData;
            }
            set
            {
                _importantData = value;
            }
        }

        public static string ImportantData2
        {
            get
            {
                return _importantData2;
            }
            set
            {
                _importantData2 = value;
            }
        }

        public static string ImportantData3
        {
            get
            {
                return _importantData3;
            }
            set
            {
                _importantData3 = value;
            }
        }
    }
}