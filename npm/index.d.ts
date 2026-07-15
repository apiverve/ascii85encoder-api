declare module '@apiverve/ascii85encoder' {
  export interface ascii85encoderOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface ascii85encoderResponse {
    status: string;
    error: string | null;
    data: ASCII85EncoderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ASCII85EncoderData {
      originalText:     null | string;
      encoded:          null | string;
      format:           null | string;
      originalLength:   number | null;
      encodedLength:    number | null;
      compressionRatio: null | string;
  }

  export default class ascii85encoderWrapper {
    constructor(options: ascii85encoderOptions);

    execute(callback: (error: any, data: ascii85encoderResponse | null) => void): Promise<ascii85encoderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: ascii85encoderResponse | null) => void): Promise<ascii85encoderResponse>;
    execute(query?: Record<string, any>): Promise<ascii85encoderResponse>;
  }
}
