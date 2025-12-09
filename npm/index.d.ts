declare module '@apiverve/ascii85encoder' {
  export interface ascii85encoderOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface ascii85encoderResponse {
    status: string;
    error: string | null;
    data: ASCII85EncoderData;
    code?: number;
  }


  interface ASCII85EncoderData {
      originalText:     string;
      encoded:          string;
      format:           string;
      originalLength:   number;
      encodedLength:    number;
      compressionRatio: string;
  }

  export default class ascii85encoderWrapper {
    constructor(options: ascii85encoderOptions);

    execute(callback: (error: any, data: ascii85encoderResponse | null) => void): Promise<ascii85encoderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: ascii85encoderResponse | null) => void): Promise<ascii85encoderResponse>;
    execute(query?: Record<string, any>): Promise<ascii85encoderResponse>;
  }
}
