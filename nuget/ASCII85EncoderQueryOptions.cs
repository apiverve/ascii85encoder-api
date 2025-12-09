using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ASCII85Encoder
{
    /// <summary>
    /// Query options for the ASCII85 Encoder API
    /// </summary>
    public class ASCII85EncoderQueryOptions
    {
        /// <summary>
        /// Text to encode or decode
        /// Example: Hello World
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// Action to perform: encode or decode (default: encode)
        /// Example: encode
        /// </summary>
        [JsonProperty("action")]
        public string Action { get; set; }

        /// <summary>
        /// Format: standard or btoa (Adobe format with <~ ~> delimiters, default: standard)
        /// Example: standard
        /// </summary>
        [JsonProperty("format")]
        public string Format { get; set; }
    }
}
