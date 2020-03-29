using System.IO;
using CommandLine;
using PeNet;

namespace CertDump
{
    static class Program
    {
        public class Options
        {
            [Option('f', "file", Required = true, HelpText = "Input file to dump the certificate from.")]
            public string File { get; set; }

            [Option('o', "out", Required = false, Default = "cert.dump", HelpText = "Output file to dump the certificate to.")]
            public string Out { get; set; }
        }

        static void Main(string[] args)
        {
            Parser.Default.ParseArguments<Options>(args)
                .WithParsed(o =>
                {
                    DumpCert(o.File, o.Out);
                });
        }

        static void DumpCert(string file, string output)
        {
            var peFile = new PeFile(file);
            File.WriteAllBytes(output, peFile.WinCertificate.BCertificate.ToArray());
        }
    }
}
