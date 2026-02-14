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
        /// Text to encode
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// Action to perform
        /// </summary>
        [JsonProperty("action")]
        public string Action { get; set; }

        /// <summary>
        /// Output format
        /// </summary>
        [JsonProperty("format")]
        public string Format { get; set; }
    }
}
